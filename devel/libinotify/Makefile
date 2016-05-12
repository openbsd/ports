# $OpenBSD: Makefile,v 1.8 2016/05/12 09:27:39 dcoppa Exp $

COMMENT =		kevent based inotify

DISTNAME =		libinotify-20160503

SHARED_LIBS =		inotify 2.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/wulf7/libinotify-kqueue

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread

MASTER_SITES =		http://www.linklevel.net/distfiles/ \
			http://ohvost.ru/dnl/
WRKDIST =		${WRKDIR}/wulf7-libinotify-kqueue-c637d04

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
