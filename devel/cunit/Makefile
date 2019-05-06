# $OpenBSD: Makefile,v 1.10 2019/05/06 19:51:38 danj Exp $

COMMENT =		c unit testing framework

VER =			2.1-2
DISTNAME =		CUnit-${VER}
PKGNAME =		cunit-${VER:S/-/./}
REVISION =		1

SHARED_LIBS =		cunit	1.0

CATEGORIES =		devel

HOMEPAGE =		http://cunit.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cunit/}
EXTRACT_SUFX =		-src.tar.bz2

FAKE_FLAGS +=		docdir=${PREFIX}/share/doc/CUnit/ \
			dochdrdir=${PREFIX}/share/doc/CUnit/headers/

CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		LDFLAGS="-lncurses"
CONFIGURE_ARGS +=	--enable-curses
AUTOCONF_VERSION =	2.67

WANTLIB += ncurses

.include <bsd.port.mk>
