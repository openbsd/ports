# $OpenBSD: Makefile,v 1.14 2020/11/17 10:23:18 sthen Exp $

COMMENT =		kevent based inotify

GH_ACCOUNT =		libinotify-kqueue
GH_PROJECT =		libinotify-kqueue
GH_TAGNAME =		20170711
PKGNAME =		libinotify-${GH_TAGNAME}
REVISION =		1

SHARED_LIBS =		inotify 2.1

CATEGORIES =		devel

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread

DEBUG_PACKAGES =	${BUILD_PACKAGES}

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS = 	--libdir=${PREFIX}/lib/inotify/ \
			--includedir=${PREFIX}/include/inotify/

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14

TEST_TARGET =		test

FAKE_FLAGS +=		pkgconfigdir=${PREFIX}/lib/pkgconfig/

.include <bsd.port.mk>
