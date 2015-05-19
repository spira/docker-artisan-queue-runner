FROM nglume/docker-artisan

MAINTAINER "Zak Henry" <zak.henry@gmail.com>

ENTRYPOINT ["php", "artisan"]
CMD ["queue:listen"]
