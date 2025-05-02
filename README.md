# A Simple Uninstall Script Generator

## Usage

```bash
./prep.sh <target_folder> <command_prefix> <output_file>
```

### Example:

```bash
./prep.sh "./myfiles" "rm -f" "uninstall.sh"
```

## Note

* This script only **lists files**, not directories.
* It does **not** execute the uninstall script — it just writes it.
* Always inspect the generated script before running it.
