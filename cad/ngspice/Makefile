# $OpenBSD: Makefile,v 1.10 2018/06/04 10:52:34 bentley Exp $

COMMENT =		circuit simulator, based on Berkeley SPICE

DISTNAME =		ngspice-28

CATEGORIES =		cad

HOMEPAGE =		http://ngspice.sourceforge.net/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =		yes
CONFIGURE_STYLE =	gnu
WANTLIB +=		c m ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xt
WANTLIB +=		Xpm xcb

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ngspice/}

.include <bsd.port.mk>
