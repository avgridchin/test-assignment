# Test-assignment
Test assignment for Devops-engineer role

## Steps for evaluation

    0. The task is described in TZ.pdf file
    1. Clone the repo by `git clone https://github.com/avgridchin/test-assignment.git`
    2. Move into repo directory `cd test-assignment`
    3. Build the project by `docker-compose up -d --build`
    4. Move to `/ansible` directory
    5. Do the magic `ansible-playbook -i inventory playbook.yml`
    6. Open in the browser `http://localhost:8080/images`
    7. Check if the images are available
