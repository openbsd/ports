# $OpenBSD: Makefile,v 1.11 2019/05/19 19:13:46 naddy Exp $

COMMENT =		kevent based inotify

GH_ACCOUNT =		libinotify-kqueue
GH_PROJECT =		libinotify-kqueue
GH_TAGNAME =		20170711
PKGNAME =		libinotify-${GH_TAGNAME}

SHARED_LIBS =		inotify 2.1

CATEGORIES =		devel

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS = 	--libdir=${PREFIX}/lib/inotify/ \
			--includedir=${PREFIX}/include/inotify/

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14

TEST_TARGET =		test

post-install:
	@rm -rf ${WRKINST}${LOCALBASE}/lib/inotify/pkgconfig

.include <bsd.port.mk>
