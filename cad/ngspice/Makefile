# $OpenBSD: Makefile,v 1.1.1.1 2011/05/16 08:20:17 landry Exp $

COMMENT =		circuit simulator, based on Berkeley SPICE

DISTNAME =		ngspice-22

CATEGORIES =		cad

HOMEPAGE =		http://ngspice.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

USE_GMAKE =		yes
USE_LIBTOOL =		yes
CONFIGURE_STYLE =	gnu
WANTLIB +=		c m ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xt
WANTLIB +=		Xpm pthread-stubs xcb

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ngspice/}

.include <bsd.port.mk>
