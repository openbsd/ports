# $OpenBSD: Makefile,v 1.2 2014/04/21 22:15:33 jca Exp $

COMMENT =		an extensible platform for analysis of C software

DISTNAME =		frama-c-Neon-20140301
PKGNAME =		frama-c-1.10
CATEGORIES =		devel
HOMEPAGE =		http://www.frama-c.com/

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.frama-c.com/download/

WANTLIB += c curses m pthread

MODULES =		lang/ocaml

# to build the GUI, x11/lablgtk2 would need to be built with
# libgnomecanvas support

USE_GMAKE =		Yes
TEST_TARGET =		oracles tests

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	MAKE=${MAKE_PROGRAM} \
			--docdir=${PREFIX}/share/doc/frama-c/ \
			--disable-gui

.include <bsd.port.mk>
