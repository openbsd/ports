# $OpenBSD: Makefile,v 1.20 2014/03/28 11:14:43 sthen Exp $

COMMENT=	modular framework for web-based applications

# LGPLv2
DISTNAME=	horde-3.3.13
REVISION=	3
CATEGORIES=	devel
MASTER_SITES=	${HORDE_SITES:=horde/}
HOMEPAGE=	http://www.horde.org/
INSTDIR=	horde
HORDE_MODULE=

RUN_DEPENDS+=	databases/pear-DB \
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
		pear-MDB2-mysql-*|pear-MDB2-pgsql-*:databases/pear-MDB2-pgsql \
		php-mysql-${MODPHP_VSPEC}|php-pgsql-${MODPHP_VSPEC}:lang/php/${MODPHP_VERSION},-pgsql

.include <bsd.port.mk>
