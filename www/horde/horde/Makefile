# $OpenBSD: Makefile,v 1.6 2010/11/22 08:36:48 espie Exp $ 

COMMENT=	modular framework for web-based applications

# LGPLv2
DISTNAME=	horde-3.3.8
REVISION=	1
CATEGORIES=	devel
MASTER_SITES=	${HORDE_SITES:=horde/}
HOMEPAGE=	http://www.horde.org/
INSTDIR=	horde
HORDE_MODULE=

RUN_DEPENDS+=	databases/pear-DB \
		databases/pear-MDB2 \
		devel/pear-Console-Table \
		devel/pear-Log \
		graphics/pecl-imagick \
		mail/pear-Mail \
		mail/pear-Mail-Mime \
		mail/pear-Mail-mimeDecode \
		net/pear-Net-DNS \
		net/pear-Services-Weather \
		textproc/pear-File \
		textproc/pear-File-Find \
		www/pear \
		www/pear-HTTP-WebDAV-Server \
		www/pear-SOAP \
		www/pecl-geoip \
		www/php5/core>=5.2.0 \
		www/php5/extensions,-gd \
		www/php5/extensions,-mbstring \
		www/php5/extensions,-mcrypt \
		php5-mysql-*|php5-pgsql-*:www/php5/extensions,-pgsql

.include <bsd.port.mk>
