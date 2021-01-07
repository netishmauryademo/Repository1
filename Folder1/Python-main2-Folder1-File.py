import argparse

parser = argparse.ArgumentParser()
parser.add_argument('-VMName', '-f')

args = parser.parse_args()
print("VMName:" + args.VMName)
