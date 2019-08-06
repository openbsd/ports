# $OpenBSD: Makefile,v 1.5 2019/08/06 10:20:09 sthen Exp $

COMMENT =		package compiler and linker metadata toolkit

DISTNAME =		pkgconf-1.6.3

SHARED_LIBS +=		pkgconf 0.0	# 3.0

CATEGORIES =		devel

HOMEPAGE =		https://git.dereferenced.org/pkgconf/pkgconf

MAINTAINER =		Adam Steen <adam@adamsteen.com.au>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c

MASTER_SITES =		https://distfiles.dereferenced.org/pkgconf/

TEST_DEPENDS =		devel/kyua-cli

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-pkg-config-dir=/usr/lib/pkgconfig:${LOCALBASE}/lib/pkgconfig:${LOCALBASE}/share/pkgconfig:${X11BASE}/lib/pkgconfig:${X11BASE}/share/pkgconfig

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
