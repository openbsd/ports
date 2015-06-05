# $OpenBSD: Makefile,v 1.15 2015/06/05 06:00:22 robert Exp $

COMMENT=	simple and clean multi-user web file manager

DISTNAME=	mollify_1.8.9.3
REVISION=	2
PKGNAME=	${DISTNAME:S/_/-/}
EXTRACT_SUFX=	.zip
CATEGORIES=	www

HOMEPAGE=	http://www.mollify.org/

# "For non-commercial use Mollify is available with EPL 1.0 license."
# For commercial use, see http://www.mollify.org/license.php
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	https://mollify.googlecode.com/files/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/htdocs/mollify
WRKDIST=	${WRKDIR}/mollify

SUBST_VARS=	INSTDIR

MODULES=	lang/php

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && pax -rw * ${INSTDIR}
	mv ${INSTDIR}/index.html ${INSTDIR}/index.html.dist
	touch ${INSTDIR}/backend/configuration.php.dist

.include <bsd.port.mk>
