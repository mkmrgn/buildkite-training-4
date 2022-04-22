#!/bin/bash

set -e

test_count=25
parallel_count=$BUILDKITE_PARALLEL_JOB_COUNT
parallel_index=$BUILDKITE_PARALLEL_JOB
tests_per_agent=$(expr test_count/parallel_count)
agent_test_start=$(( ((parallel_index-1)*tests_per_agent)+1 ))
agent_test_finish=$(( tests_per_agent*parallel_index ))

echo "Start test $agent_test_start"
echo "Finish test $agent_test_finish"