import os
import pandas
import random
from matplotlib import pyplot as plt

def make_plots(input_file, output_dir):
    df = pandas.read_csv(input_file, sep="\s*;\s*", engine='python') # Dumbass csv-parser doesn't know to trim whitespace by itself!
    df = preprocess(df)

    for LR in [2, 4]:
        plot_for(df, LR)
        plt.savefig(os.path.join(output_dir, f"LR{LR}.png"))
        plt.close()

def preprocess(df):
    return df

def plot_for(df, LR):

    df = df[(df["LR"] == LR)]
    df = df.sort_values(by=['R'])
    fig, ax = plt.subplots()
    fig.set_figheight(4)
    fig.set_figwidth(8)

    df.plot(ax=ax, x="R", y="cost", xticks=df["R"], xlabel="Episodes", ylabel="Cost", label=f"Pre-shielded")

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser()
    parser.add_argument("--input-file", help="Path to csv file which stores the data.", default="~/Q-PART/experiment/BB.csv")
    parser.add_argument("--output-dir", help="Output dir.", default="~/Q-PART/experiment/BB")
    args = parser.parse_args()

    make_plots(args.input_file, args.output_dir)
