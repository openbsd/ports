# $OpenBSD: Makefile,v 1.5 2011/01/01 16:14:41 rpointel Exp $

COMMENT =		c unit testing framework

VER =			2.1-0
DISTNAME =		CUnit-${VER}
PKGNAME =		cunit-${VER:S/-/./}
REVISION =		0

SHARED_LIBS =		cunit	0.0

CATEGORIES =		devel

HOMEPAGE =		http://cunit.sourceforge.net/

MAINTAINER =		Markus Bergkvist <markus.bergkvist@telia.com>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cunit/}
EXTRACT_SUFX =		-src.tar.gz

USE_LIBTOOL =		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		LDFLAGS="-lncurses"
CONFIGURE_ARGS +=	--enable-curses
AUTOCONF_VERSION =	2.59

WANTLIB += ncurses

.include <bsd.port.mk>
