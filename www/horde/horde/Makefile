# $OpenBSD: Makefile,v 1.3 2010/08/30 13:29:40 sthen Exp $ 

COMMENT=	modular framework for web-based applications

# LGPLv2
DISTNAME=	horde-3.3.8
CATEGORIES=	devel
MASTER_SITES=	${HORDE_SITES:=horde/}
HOMEPAGE=	http://www.horde.org/
INSTDIR=	horde
HORDE_MODULE=

RUN_DEPENDS+=	::databases/pear-DB \
		::databases/pear-MDB2 \
		::devel/pear-Log \
		::graphics/pecl-imagick \
		::mail/pear-Mail \
		::mail/pear-Mail-Mime \
		::mail/pear-Mail-mimeDecode \
		::net/pear-Net-DNS \
		::net/pear-Services-Weather \
		::textproc/pear-File \
		::www/pear \
		::www/pear-HTTP-WebDAV-Server \
		::www/pear-SOAP \
		::www/pecl-geoip \
		::www/php5/core \
		::www/php5/extensions,-gd \
		::www/php5/extensions,-mbstring \
		::www/php5/extensions,-mcrypt \
		:php5-mysql-*|php5-pgsql-*:www/php5/extensions,-pgsql

.include <bsd.port.mk>
