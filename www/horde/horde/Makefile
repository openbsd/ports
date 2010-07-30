# $OpenBSD: Makefile,v 1.2 2010/07/30 22:07:53 sthen Exp $ 

COMMENT=	modular framework for web-based applications

# LGPLv2
DISTNAME=	horde-3.3.8
CATEGORIES=	devel
MASTER_SITES=	${HORDE_SITES:=horde/}
HOMEPAGE=	http://www.horde.org/
INSTDIR=	horde
HORDE_MODULE=

RUN_DEPENDS+=	:pear-*:www/pear \
		:pear-DB-*:databases/pear-DB \
		:pear-File-*:textproc/pear-File \
		:pear-HTTP-WebDAV-Server-*:www/pear-HTTP-WebDAV-Server \
		:pear-Log-*:devel/pear-Log \
		:pear-Mail-*:mail/pear-Mail \
		:pear-Mail-Mime-*:mail/pear-Mail-Mime \
		:pear-Mail-mimeDecode-*:mail/pear-Mail-mimeDecode \
		:pear-MDB2-*:databases/pear-MDB2 \
		:pear-Net-DNS-*:net/pear-Net-DNS \
		:pear-Services-Weather-*:net/pear-Services-Weather \
		:pear-SOAP-*:www/pear-SOAP \
		:pecl-geoip-*:www/pecl-geoip \
		:pecl-imagick-*:graphics/pecl-imagick \
		:php5-core-*:www/php5/core \
		:php5-gd-*:www/php5/extensions,-gd \
		:php5-mbstring-*:www/php5/extensions,-mbstring \
		:php5-mcrypt-*:www/php5/extensions,-mcrypt \
		:php5-mysql-*|php5-pgsql-*:www/php5/extensions,-pgsql

.include <bsd.port.mk>
