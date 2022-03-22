The [repository](https://github.com/source-ag/assignment-cloud-engineer) for the assignment
is public and Github does not allow the creation of private forks for public repositories.

The correct way of creating a private frok by duplicating the repo is documented
[here](https://help.github.com/articles/duplicating-a-repository/).

For this assignment the commands are:

 1. Create a bare clone of the repository.
    (This is temporary and will be removed so just do it wherever.)
    ```bash
    git clone --bare git@github.com:source-ag/assignment-cloud-engineer.git
    ```

 2. [Create a new private repository on Github](https://help.github.com/articles/creating-a-new-repository/) and give it a good name, for example `source-assignment-cloud-engineer`.

 3. Mirror-push your bare clone to your new `source-assignment-cloud-engineer` repository.
    > Replace `<your_username>` with your actual Github username in the url below.

    ```bash
    cd assignment-cloud-engineer
    git push --mirror git@github.com:<your_username>/source-assignment-cloud-engineer.git
    ```

 4. Remove the temporary local repository you created in step 1.
    ```bash
    cd ..
    rm -rf assignment-cloud-engineer
    ```

 5. You can now clone your `source-assignment-cloud-engineer` repository on your machine (in my case in the `code` folder).
    ```bash
    git clone git@github.com:<your_username>/source-assignment-cloud-engineer.git
    ```

 6. Add the reviewers as collaborators to your new repository: DandyDev, uzitovb, paula13
