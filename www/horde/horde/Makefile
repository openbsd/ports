# $OpenBSD: Makefile,v 1.14 2012/01/11 22:09:48 sthen Exp $

COMMENT=	modular framework for web-based applications

# LGPLv2
DISTNAME=	horde-3.3.12
REVISION=	2
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
		lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-mcrypt \
		php-mysql-${MODPHP_VERSION}.*|php-pgsql-${MODPHP_VERSION}.*:lang/php/${MODPHP_VERSION},-pgsql

.include <bsd.port.mk>
