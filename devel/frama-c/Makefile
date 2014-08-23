# $OpenBSD: Makefile,v 1.4 2014/08/23 07:09:18 chrisz Exp $

COMMENT =		an extensible platform for analysis of C software

DISTNAME =		frama-c-Neon-20140301
PKGNAME =		frama-c-1.10
REVISION =		1
CATEGORIES =		devel
HOMEPAGE =		http://www.frama-c.com/

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.frama-c.com/download/

WANTLIB += c curses m pthread

MODULES =		lang/ocaml

BUILD_DEPENDS =		x11/lablgtk2>=2.18.0p2
RUN_DEPENDS =		x11/lablgtk2>=2.18.0p2

USE_GMAKE =		Yes
TEST_TARGET =		oracles tests

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	MAKE=${MAKE_PROGRAM} \
			--docdir=${PREFIX}/share/doc/frama-c/

.include <bsd.port.mk>
