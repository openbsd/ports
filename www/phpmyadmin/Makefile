# $OpenBSD: Makefile,v 1.76 2012/08/31 16:40:38 sthen Exp $

COMMENT=	tool to handle the administration of MySQL over the web

V=		3.4.11.1
# If updating to 3.5.x, note that contrib/htaccess (@sample'd and
# mentioned in README) is removed.
PKGNAME=	phpMyAdmin-$V
DISTNAME=	phpMyAdmin-$V-all-languages
REVISION=	0
CATEGORIES=	www
HOMEPAGE=	http://www.phpmyadmin.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phpmyadmin/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/phpMyAdmin
SUBST_VARS=	INSTDIR V

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-mysql \
		lang/php/${MODPHP_VERSION},-mysqli \
		lang/php/${MODPHP_VERSION},-mcrypt \
		lang/php/${MODPHP_VERSION},-gd

post-extract:
	${SUBST_CMD} -c ${FILESDIR}/phpMyAdmin-httpd.conf \
	    ${WRKSRC}/contrib/phpMyAdmin-httpd.conf

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/
	cd ${WRKSRC}; pax -rw ./ ${INSTDIR}/

.include <bsd.port.mk>
