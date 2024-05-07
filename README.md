# AWS-Detect

### Description:
This Bash script checks a list of hostnames to determine if they belong to AWS services. It uses the dig command to resolve hostnames to IP addresses and identifies AWS domains based on their naming convention.

### Usage:
- Clone or download this repository.
- Navigate to the directory containing the script.
- Run the script using the following command:

```
./aws.sh -l list.txt -o output.txt
```
Replace list.txt with the path to your list file containing hostnames. Optionally, you can specify the output file using the -o flag followed by the desired output file name.

Options:
- -l list_file: Specify the path to the list file containing hostnames to check.
- -o output_file: (Optional) Specify the output file name. If not provided, the default output file name is aws_records.txt.
