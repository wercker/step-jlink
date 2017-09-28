This step creates a custom Java runtime from a given set of Java modules of an
existing Java runtime.

The location of the existing Java runtime must be declared in the `JAVA_HOME` 
environment variable.

This step can be used to create a smaller custom Java runtime containing only
the Java modules required to either build a Java application or run a Java
application.


Options
-------

- `add_modules` (default: `java.base) a comma separated list of Java modules to   be included in the custom Java runtime (any dependent modules will also be
  implicitly included).  To list the set of modules of a Java runtime use the
  command `java --list-modules`.

- `compress` (default: `2`) the compression level for resources.
  A value of `0` means no compression.
  A value of `1` means constant strings are shared.
  A value of `2` means ZIP compression is used

- `output` (default: `javaruntime`) the directory under which the contents of
  the custom Java runtime will be placed

Supplying no options will create the smallest possible Java runtime that
contains just the java.base module.
