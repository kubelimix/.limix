#!/bin/bash
while getopts 'b:d:' OPT &> /dev/null;do
  case $OPT in
  b)
    echo "The options is b"
    echo $OPTARG ;;
  d)
    echo "The options is d"
    echo $OPTARG ;;
  *)
    echo "invalid option: -$OPTARG"
    exit 7 ;;
  esac
	echo $OPT;
	echo $OPTIND;
done
echo $OPTIND
shift $[$OPTIND-1]
echo $1
