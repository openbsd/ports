# $OpenBSD: Makefile,v 1.1.1.1 2008/08/29 09:18:39 sthen Exp $

COMMENT =		c unit testing framework

VER =			2.1-0
DISTNAME =		CUnit-${VER}
PKGNAME =		cunit-${VER:S/-/./}

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
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-curses

.include <bsd.port.mk>
