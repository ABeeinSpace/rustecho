use clap::Parser;

#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
struct Args {
    #[arg(short, long)]
    input: String,

    #[arg(short, long, default_value_t = 1)]
    count: u8,

    #[arg(short, default_value_t = false)]
    newline: bool,
}

fn main() {
    let args = Args::parse();

    if args.newline == true {
        for _ in 0..args.count - 1 {
            println!("{} ", args.input);
        }

        print!("{}", args.input);
    } else {
        for _ in 0..args.count {
            println!("{}", args.input);
        }
    }
}
