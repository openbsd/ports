# $OpenBSD: Makefile,v 1.124 2016/06/27 19:36:50 sthen Exp $

COMMENT=	tool to handle the administration of MySQL over the web

V=		4.5.5.1

PKGNAME=	phpMyAdmin-$V
DISTNAME=	phpMyAdmin-$V-all-languages
CATEGORIES=	www
HOMEPAGE=	http://www.phpmyadmin.net/
REVISION=	0

PORTROACH=	site:https://www.phpmyadmin.net/files/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://files.phpmyadmin.net/phpMyAdmin/${V}/

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
	${SUBST_CMD} -m 0644 -c ${FILESDIR}/phpMyAdmin-httpd.conf \
	    ${WRKSRC}/examples/phpMyAdmin-httpd.conf

do-install:
	@find ${WRKSRC} -type f -name "*.orig" -exec rm -f {} \;
	${INSTALL_DATA_DIR} ${INSTDIR}/
	cd ${WRKSRC}; pax -rw ./ ${INSTDIR}/

.include <bsd.port.mk>
