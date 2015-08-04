FROM spira/docker-artisan

MAINTAINER "Zak Henry" <zak.henry@gmail.com>

WORKDIR /data/api

ENTRYPOINT ["php", "artisan"]
# Ensure that we only retry things in queue 3 times.
CMD ["queue:listen", "--tries=3"]
