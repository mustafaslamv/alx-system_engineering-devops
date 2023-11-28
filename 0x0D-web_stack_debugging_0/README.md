# 0x0D. Web stack debugging #0

#TASK0  0. Give me a page!
# Debugging Summary

## Initial Issue:
- Attempted `curl 0:8080`.
- Expected result: "Hello Holberton" from `index.html` in `/var/www/html`.
- Received error: `curl: (56) Recv failure: Connection reset by peer`.

## Debugging Steps:
- Checked the container and confirmed the existence of the `index.html` file at `/var/www/html/index.html`.
- Repeated the `curl` command, but the issue persisted.
- Checked the status of the Apache2 service using `sudo service apache2 status`.
- Discovered that the Apache2 service was not running.

## Resolution:
- Started the Apache2 service using `sudo service apache2 start`.
- Re-executed `curl 0:8080`.
- Successfully received the expected result: "Hello Holberton" from `index.html`.

## Conclusion:
- The issue was due to the Apache2 service being stopped.
- Resolved by starting the Apache2 service, after which the `curl` command successfully fetched the content of `index.html`.

