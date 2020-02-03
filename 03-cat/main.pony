// https://github.com/ponylang/ponyc/blob/master/examples/files/files.pony
use "files"

actor Main
  new create(env: Env) =>
    try
      with file = OpenFile(
        FilePath(env.root as AmbientAuth, env.args(1)?) ?
        ) as File
      do
      for line in file.lines() do
        env.out.print(consume line)
      end
    end
  else
    try
      env.err.print(env.args(1)? + ": No such file or directory")
    end
  end
