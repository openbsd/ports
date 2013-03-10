# $OpenBSD: Makefile,v 1.4 2013/03/10 23:04:45 espie Exp $

COMMENT =		circuit simulator, based on Berkeley SPICE

DISTNAME =		ngspice-25
REVISION =		0

CATEGORIES =		cad

HOMEPAGE =		http://ngspice.sourceforge.net/

MAINTAINER =		Anthony J. Bentley <anthony@cathet.us>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

USE_GMAKE =		yes
USE_LIBTOOL =		yes
CONFIGURE_STYLE =	gnu
WANTLIB +=		c m ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xt
WANTLIB +=		Xpm pthread-stubs xcb

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ngspice/}

.include <bsd.port.mk>
