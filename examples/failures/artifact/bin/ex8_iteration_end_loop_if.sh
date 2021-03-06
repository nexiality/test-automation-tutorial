#!/bin/sh

PROJECT_HOME=$(cd `dirname $0`/../..; pwd -P)
echo "${PROJECT_HOME}"

echo "--------------------------------------------------------------------------------"
echo "[ EXAMPLE 8                                                                    ]"
echo "--------------------------------------------------------------------------------"
echo "When:"
echo "  1. nexial.failFast is set to false"
echo "  2. use iteration"
echo "  3. first scenario has a EndLoopIf() flow control"
echo "Then:"
echo "  1. Nexial will abort the affected scenario"
echo "  2. Nexial will abort the remaining scenarios"
echo "  3. Nexial will continue executing remaining iterations"
echo "  4. Nexial will exit with a 0 (100% PASS). Early script termination DOES NOT constitutate any error condition"
echo ""
echo ""

read -n 1 -s -r -p "Press any key to continue"

nexial.sh -script "$PROJECT_HOME/artifact/script/ScriptTest.xlsx" -scenario Scenario4,Scenario3
