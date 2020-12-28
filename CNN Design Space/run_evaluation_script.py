# Generates graphs and trains on multiple workers
# Author :  Shikhar Tuli

import sys

if './nasbench-master/' not in sys.path:
	sys.path.append('./nasbench-master/')

import os
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3' 

from absl import flags
from absl import app

from nasbench.scripts import run_evaluation

FLAGS = flags.FLAGS

# Change default flag values
# Those flag values define in command line take precedence
FLAGS.module_vertices = 5
FLAGS.use_tpu = False # For training on single CPU/GPU per worker
FLAGS.train_epochs = 4

# Parse flags before access
FLAGS(sys.argv)

FLAGS.models_file = f'./results/generated_graphs_vertices_{FLAGS.module_vertices}.json'
FLAGS.output_dir = f'./results/evaluation_vertices_{FLAGS.module_vertices}'

FLAGS.train_data_files = ['datasets/cifar10/train_{}.tfrecords'.format(i) for i in range(1, 5)]
FLAGS.valid_data_file = 'datasets/cifar10/validation.tfrecords'
FLAGS.test_data_file = 'datasets/cifar10/test.tfrecords'
FLAGS.sample_data_file = 'datasets/cifar10/sample.tfrecords'

# Run single worker evaluation
worker_id = FLAGS.worker_id + FLAGS.worker_id_offset

evaluator = run_evaluation.Evaluator(
  models_file=FLAGS.models_file,
  output_dir=FLAGS.output_dir,
  worker_id=worker_id,
  total_workers=FLAGS.total_workers,
  model_id_regex=FLAGS.model_id_regex)

evaluator.run_evaluation()