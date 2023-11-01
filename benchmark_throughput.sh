#!/bin/bash

main () {

  positional_args=()

  model_path="/app/model"
  dataset_path="/app/dataset/ShareGPT_V3_unfiltered_cleaned_split.json"

  while [[ $# -gt 0 ]]; do
    case $1 in
      "-h"|"--help")
        python3 /app/vllm-rocm/benchmarks/benchmark_throughput.py --help
        return 0
        ;;
      "--dataset")
        dataset_path="$2"
        shift
        shift
        ;;
      "--model")
        model_path="$2"
        shift
        shift
        ;;
      *)
        positional_args+=("$1")
        shift
        ;;
    esac
  done

  python3 /app/vllm-rocm/benchmarks/benchmark_throughput.py --dataset "$dataset_path" --model "$model_path" "$@"
  return $?

}

main "$@"
exit $?
