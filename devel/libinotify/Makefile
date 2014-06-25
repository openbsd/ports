# $OpenBSD: Makefile,v 1.3 2014/06/25 09:12:00 ajacoutot Exp $

COMMENT =		kevent based inotify

DISTNAME =		libinotify-20140622

SHARED_LIBS =		inotify 0.0

CATEGORIES =		devel

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread

MASTER_SITES = 		http://distcache.freebsd.org/ports-distfiles/
WRKDIST =		${WRKDIR}/dmatveev-libinotify-kqueue-d775062

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
