# $OpenBSD: Makefile,v 1.2 2014/06/24 08:32:19 ajacoutot Exp $

COMMENT =		kevent based inotify

DISTNAME =		libinotify-20120419
REVISION =		0

SHARED_LIBS =		inotify 0.0

CATEGORIES =		devel

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread

MASTER_SITES = 		http://ftp.vim.org/pub/ftp/os/BSD/FreeBSD/ports/local-distfiles/sunpoet/ \
			http://www.linklevel.net/distfiles/
EXTRACT_SUFX = 		.tar.xz

BUILD_DEPENDS =		devel/libtool \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	--libdir=${PREFIX}/lib/inotify/ \
			--includedir=${PREFIX}/include/inotify/

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14

TEST_TARGET =		test

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -f -i

.include <bsd.port.mk>
