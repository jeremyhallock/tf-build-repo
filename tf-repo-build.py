import os
import shutil

# Define resource templates with module usage
templates = {
    "ec2": "templates/ec2_template.tf",
    "rds": "templates/rds_template.tf",
    "s3": "templates/s3_template.tf",
}

# Define a directory structure for the new Terraform repo
repo_structure = [
    "variables.tf",
    "outputs.tf",
    "providers.tf",
    "backend.tf",
    "versions.tf",
    "terraform.tfvars",
]

# Path to the base directory containing template files
BASE_DIR = "base"

# Ask the user to select resources
def get_user_input():
    print("Select the resources to create (comma-separated):")
    print("1. EC2")
    print("2. RDS")
    print("3. S3 Bucket")
    selection = input("Enter the number(s): ").split(",")
    return [option.strip() for option in selection]

# Copy base template files to the new repo
def copy_base_templates(repo_dir):
    for file_name in repo_structure:
        src = os.path.join(BASE_DIR, file_name)
        dest = os.path.join(repo_dir, file_name)
        shutil.copy(src, dest)
        print(f"Copied {file_name} to {dest}")

# Copy resource-specific templates (EC2, RDS, S3)
def create_resource_files(selected_resources, repo_dir):
    for resource in selected_resources:
        if resource == '1':
            print(f"Adding EC2 module to the repo...")
            template_file = templates["ec2"]
            shutil.copy(template_file, os.path.join(repo_dir, "ec2_resource.tf"))
        elif resource == '2':
            print(f"Adding RDS module to the repo...")
            template_file = templates["rds"]
            shutil.copy(template_file, os.path.join(repo_dir, "rds_resource.tf"))
        elif resource == '3':
            print(f"Adding S3 module to the repo...")
            template_file = templates["s3"]
            shutil.copy(template_file, os.path.join(repo_dir, "s3_resource.tf"))

# Create the new Terraform repo
def create_repo(selected_resources):
    repo_name = input("Enter the name for the new Terraform repo: ")
    repo_dir = os.path.join(os.getcwd(), repo_name)

    # Create repo directory and the base structure
    os.makedirs(repo_dir, exist_ok=True)

    # Copy base templates
    copy_base_templates(repo_dir)

    # Add resource files based on user selection
    create_resource_files(selected_resources, repo_dir)

    print(f"Repo {repo_name} created at {repo_dir}")

# Run the script
def main():
    selected_resources = get_user_input()
    create_repo(selected_resources)

if __name__ == "__main__":
    main()
