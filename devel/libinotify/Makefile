# $OpenBSD: Makefile,v 1.15 2020/12/19 23:25:48 sthen Exp $

COMMENT =		kevent based inotify

GH_ACCOUNT =		libinotify-kqueue
GH_PROJECT =		libinotify-kqueue
GH_TAGNAME =		20180201
PKGNAME =		libinotify-${GH_TAGNAME}

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
