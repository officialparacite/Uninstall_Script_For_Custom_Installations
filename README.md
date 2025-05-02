````markdown
# A Simple Uninstall Script Generator

If you're someone who downloads a bunch of stuff and is too lazy to keep track of what you installed—but then one day decides, "I want to delete this"—and suddenly you're wondering, *"What files do I even need to remove?"* … well, you're already kind of screwed.

But worry no more—your savior is here.  
(Not Jesus Christ, but a stupid simple Bash script that I totally didn't ask ChatGPT to write.)

## Usage

```bash
./prep.sh <target_folder> <command_prefix> <output_file>
````

### Example

```bash
./prep.sh "./myfiles" "rm -f" "uninstall.sh"
```

This creates a file called `uninstall.sh` containing lines like:

```bash
rm -f "./myfiles/file1"
rm -f "./myfiles/folder/file2"
```

Now you have a ready-to-go uninstall script you can run (after reviewing it, of course).

## Note

* This script only **lists files**, not directories.
* It does **not** execute the uninstall script — it just writes it.
* Always inspect the generated script before running it.

---

```
