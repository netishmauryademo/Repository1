import argparse

parser = argparse.ArgumentParser()
parser.add_argument('-VMName', '-f')

print(parser.format_help())

args = parser.parse_args()
print("VMName:" + args.VMName)