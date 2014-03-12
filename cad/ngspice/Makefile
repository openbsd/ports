# $OpenBSD: Makefile,v 1.6 2014/03/12 06:18:34 bentley Exp $

COMMENT =		circuit simulator, based on Berkeley SPICE

DISTNAME =		ngspice-26

CATEGORIES =		cad

HOMEPAGE =		http://ngspice.sourceforge.net/

MAINTAINER =		Anthony J. Bentley <anthony@cathet.us>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =		yes
CONFIGURE_STYLE =	gnu
WANTLIB +=		c m ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xt
WANTLIB +=		Xpm pthread-stubs xcb

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ngspice/}

.include <bsd.port.mk>
