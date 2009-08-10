# $OpenBSD: Makefile,v 1.2 2009/08/10 06:31:45 kili Exp $

COMMENT =	X11 pixel color grabber

DISTNAME =	xoris-0.1d
PKGNAME =	${DISTNAME}p0
CATEGORIES =	graphics

HOMEPAGE =	http://gromnizki.unixdev.net/

MASTER_SITES =	${HOMEPAGE}soft/

# MIT/X license
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 c pthread-stubs xcb

CONFIGURE_STYLE = imake

MAKE_FLAGS +=	CFLAGS="${CFLAGS}" CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

NO_REGRESS =	Yes

.include <bsd.port.mk>
