# $OpenBSD: Makefile,v 1.19 2016/05/15 13:20:43 landry Exp $

COMMENT =	Java web browser plugin
DISTNAME =	icedtea-web-1.6.2
CATEGORIES =	www

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://icedtea.classpath.org/download/source/
HOMEPAGE =	http://icedtea.classpath.org/wiki/IcedTea-Web

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		BIN_BASH=${LOCALBASE}/bin/bash
CONFIGURE_ARGS =	--with-jdk-home=${LOCALBASE}/jdk-1.7.0 \
			--disable-docs \
			--libdir=${TRUEPREFIX}/lib/mozilla/plugins

MODULES =	java \
		devel/gettext

MODJAVA_VER=	1.7+

#build system does horrible things with bash
RUN_DEPENDS =	shells/bash
BUILD_DEPENDS =	${RUN_DEPENDS} \
		archivers/zip \
		devel/xulrunner/24,-devel

USE_GMAKE =	Yes
LIB_DEPENDS =	devel/glib2
WANTLIB += glib-2.0 m stdc++

post-patch:
	${SUBST_CMD} ${WRKSRC}/launcher/launchers.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/*.desktop ${PREFIX}/share/applications/

.include <bsd.port.mk>
