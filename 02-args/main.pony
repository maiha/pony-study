use "collections"

actor Main
  new create(env: Env) =>
    for i in Range[USize](0, env.args.size()) do
      let s = try env.args(i)? else "N/A" end
      env.out.print("env.args(" + i.string() + "): " + s)
    end
