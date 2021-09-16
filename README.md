# Local GitLab server

This repo just puts together a gitlab server with a runner into a single docker compose. This is just for quickly setup a local server for testing.

## Configuration

Copy the provided `.env.example` to `.env` and configure the variables.

## Running

To start both server and runner, just run

```bash
docker-compose up -d
```

Once the server is ready, you can login. For example, if using the example values, then go to `http://localhost:8929/` and login with the `root` user using the initial password.

Finally, execute the script `register-runner.sh`

```bash
./register-runner.sh <registertoken>
```

Replace `<registertoken>` with the registration token provided by gitlab.
