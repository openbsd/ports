# $OpenBSD: Makefile,v 1.6 2013/03/21 08:48:55 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Apache2 FastCGI module

DISTNAME=	mod_fastcgi-2.4.2
PKGNAME=	ap2-${DISTNAME}
REVISION=	0

CATEGORIES=	www

HOMEPAGE=	http://www.fastcgi.com/

MASTER_SITES=	${HOMEPAGE}dist/

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# Proprietary license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread

NO_TEST=	Yes

RUN_DEPENDS=	www/apache-httpd
BUILD_DEPENDS=	${RUN_DEPENDS}
MAKE_FLAGS=	top_dir=${LOCALBASE}/share/apache2 \
		APXS=${LOCALBASE}/sbin/apxs2 \
		APACHECTL=${LOCALBASE}/sbin/apachectl2
FAKE_FLAGS=	top_dir=${LOCALBASE}/share/apache2 \
		APXS=${LOCALBASE}/sbin/apxs2 \
		APACHECTL=${LOCALBASE}/sbin/apachectl2
MAKE_FILE=	Makefile.AP2
INSTALL_TARGET=	local-install

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/apache2/mod/mod_fastcgi
	${INSTALL_DATA} ${WRKBUILD}/docs/* \
		${PREFIX}/share/doc/apache2/mod/mod_fastcgi

.include <bsd.port.mk>
