#!/bin/bash
hugo && rsync -avz --delete public/ ondoheer@ondoheer.com:/var/www/blog.ondoheer.com