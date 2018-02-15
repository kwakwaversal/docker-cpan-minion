# minion (cpan)
[Minion] admin interface build using [PostgreSQL] backend

# Synopsis
```bash
$ docker run -it --rm -v ~/.pg_service.conf:/root/.pg_service.conf:ro \
    --net=host -e MINION_SERVICE_NAME=minion-default kwakwa/cpan-minion

$ curl http://localhost:3000/minion
```

# Description
This docker image is intended to be used to connect to an already existing
Minion backend. It assumes two things:

* You have a running [PostgreSQL] backend already running the same migration version of [Minion]
* You have a `.pg_service.conf` file with a service name to connect to your [PostgreSQL] instance

N.B., [Minion] auto migrates SQL version changes. I did not want to
automatically make changes to the schema without the user knowing. In the case
that the migration version is different, this image simply won't run and
complain loudly.

# What is Minion?
Minion is a high performance job queue for the Perl programming language, with support for multiple named queues, priorities, delayed jobs, job dependencies, job progress, job results, retries with backoff, rate limiting, unique jobs, statistics, distributed workers, parallel processing, autoscaling, remote control, Mojolicious admin ui, resource leak protection and multiple backends (such as [PostgreSQL]).

This build only includes the default backend, [PostgreSQL].

[Minion]: https://metacpan.org/pod/Minion
[PostgreSQL]: https://www.postgresql.org/
