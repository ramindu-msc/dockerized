kill -9 $(ps -ef | grep 'cass' | grep -v 'grep' | awk {'print $2'}) &
echo "killed server"

folder_path="/home/gcpuser/apache-cassandra-4.0.11"

# Assign the provided folder path to a variable

# Verify if the provided path exists and is a directory
if [ ! -d "$folder_path" ]; then
    echo "Error: $folder_path is not a directory or does not exist."
    exit 1
fi

# Confirm with the user before deleting the folder
echo "Are you sure you want to delete the folder $folder_path? [y/N]"
read confirmation

# Check the user's response
if [ "$confirmation" = "y" ] || [ "$confirmation" = "Y" ]; then
    # Delete the folder
    rm -r "$folder_path"
    echo "Folder $folder_path deleted successfully."
else
    echo "Deletion aborted."
fi


echo "removed distribution"
#tar -xf cass/apache-cassandra-4.0.11-bin.tar.gz
echo "extracted new distribution"