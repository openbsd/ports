# $OpenBSD: Makefile,v 1.105 2014/07/03 13:13:59 giovanni Exp $

COMMENT=	tool to handle the administration of MySQL over the web

V=		4.2.2
REVISION=	1

PKGNAME=	phpMyAdmin-$V
DISTNAME=	phpMyAdmin-$V-all-languages
CATEGORIES=	www
HOMEPAGE=	http://www.phpmyadmin.net/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=phpmyadmin/}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/phpMyAdmin
SUBST_VARS=	INSTDIR V

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-mysqli \
		lang/php/${MODPHP_VERSION},-mcrypt \
		lang/php/${MODPHP_VERSION},-gd

post-extract:
	${SUBST_CMD} -c ${FILESDIR}/phpMyAdmin-httpd.conf \
	    ${WRKSRC}/examples/phpMyAdmin-httpd.conf

do-install:
	@find ${WRKSRC} -type f -name "*.orig" -exec rm -f {} \;
	${INSTALL_DATA_DIR} ${INSTDIR}/
	cd ${WRKSRC}; pax -rw ./ ${INSTDIR}/

.include <bsd.port.mk>
