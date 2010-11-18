# $OpenBSD: Makefile,v 1.4 2010/11/18 15:34:41 jasper Exp $

COMMENT =	X11 pixel color grabber

DISTNAME =	xoris-0.1e
CATEGORIES =	graphics

HOMEPAGE =	http://xoris.sf.net/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=xoris/}

# MIT/X license
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 c

CONFIGURE_STYLE = imake

MAKE_FLAGS +=	CFLAGS="${CFLAGS}" CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

NO_REGRESS =	Yes

.include <bsd.port.mk>
