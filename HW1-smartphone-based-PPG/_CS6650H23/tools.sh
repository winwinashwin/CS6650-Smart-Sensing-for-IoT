
notebook=homework1.ipynb

tools_generate_script() {
    jupyter nbconvert $notebook --to script
}

tools_update_manifest() {
    pip freeze -l > requirements.txt
}

