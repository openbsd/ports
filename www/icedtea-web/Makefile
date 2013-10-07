# $OpenBSD: Makefile,v 1.12 2013/10/07 18:55:48 landry Exp $

SHARED_ONLY =	Yes
COMMENT =	Java web browser plugin
DISTNAME =	icedtea-web-1.4.1
CATEGORIES =	www

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://icedtea.classpath.org/download/source/
HOMEPAGE =	http://icedtea.classpath.org/wiki/IcedTea-Web

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-jdk-home=${LOCALBASE}/jdk-1.7.0 \
			--disable-docs \
			--libdir=${TRUEPREFIX}/lib/mozilla/plugins
CONFIGURE_ENV =		MOZILLA_CFLAGS="`pkg-config --cflags xulrunner-plugin`" \
			MOZILLA_LIBS="`pkg-config --libs xulrunner-plugin`"

MODULES =	java \
		devel/gettext

MODJAVA_VER=	1.7+

BUILD_DEPENDS =	archivers/zip \
		devel/xulrunner/1.9,-devel

USE_GMAKE =	Yes
LIB_DEPENDS =	devel/glib2
WANTLIB += glib-2.0 m stdc++

.include <bsd.port.mk>
