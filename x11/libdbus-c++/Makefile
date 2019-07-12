# $OpenBSD: Makefile,v 1.3 2019/07/12 20:51:15 sthen Exp $

COMMENT =	C++ API for dbus
DISTNAME =	libdbus-c++-0.9.0
SHARED_LIBS =	dbus-c++-1	0.0 \
		dbus-c++-glib-1	0.0
CATEGORIES =	x11 devel
HOMEPAGE =	http://dbus-cplusplus.sourceforge.net/

# LGPLv2.1+
PERMIT_PACKAGE =	Yes
WANTLIB =		${COMPILER_LIBCXX} c dbus-1 expat glib-2.0 iconv \
			intl m pcre


MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=dbus-cplusplus/}

LIB_DEPENDS =		devel/glib2 \
			x11/dbus
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-ecore \
			--enable-glib \
			--disable-doxygen-docs \
			--enable-tests \
			--disable-examples \
			--without-build-libdbus-cxx
COMPILER =		base-clang ports-gcc base-gcc
USE_GMAKE =		Yes
SEPARATE_BUILD =	Yes

do-test:
	${WRKBUILD}/test/functional/Test1/TestApp

.include <bsd.port.mk>
