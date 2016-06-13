#!/usr/bin/env rdmd

import std.process;
import std.stdio;
import std.string;

int main (string [] args)
{
	if (args.length < 3)
	{
		writeln ("Usage: runtwo name1 name2");
		return 1;
	}
	auto pipe12 = pipe ();
	auto pipe21 = pipe ();
	auto proc1id = spawnProcess (args[1].split,
	    pipe21.readEnd, pipe12.writeEnd, stderr, null, Config.inheritFDs);
	scope (exit)
	{
		wait (proc1id);
	}
	auto proc2id = spawnProcess (args[2].split,
	    pipe12.readEnd, pipe21.writeEnd, stderr, null, Config.inheritFDs);
	scope (exit)
	{
		wait (proc2id);
	}
	return 0;
}
