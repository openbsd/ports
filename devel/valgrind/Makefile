# $OpenBSD: Makefile,v 1.12 2015/08/24 06:40:05 jasper Exp $

ONLY_FOR_ARCHS =	amd64

COMMENT =		instrumentation framework for dynamic analysis tools
CATEGORIES =		devel

V =			3.10.1
REVISION =		8
DISTNAME =		valgrind-${V}
EXTRACT_SUFX =		.tar.bz2

MASTER_SITES =		${HOMEPAGE:=downloads/}
MASTER_SITES0 =		https://bitbucket.org/uebayasi/valgrind-openbsd/downloads/
PATCH_DIST_STRIP =	-p1
PATCHFILES =		valgrind-${V}-openbsd-20150731.patch:0

HOMEPAGE =		http://www.valgrind.org/

MAINTAINER =		Masao Uebayashi <uebayasi@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c pthread

CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes
AUTOCONF_VERSION =	2.62
AUTOMAKE_VERSION =	1.11
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libelf

pre-configure:
	@cd ${WRKSRC} && \
	env \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		/bin/sh ./autogen.sh

.include <bsd.port.mk>
