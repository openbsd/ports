# $OpenBSD: Makefile,v 1.3 2014/04/23 14:12:28 jca Exp $

COMMENT =		an extensible platform for analysis of C software

DISTNAME =		frama-c-Neon-20140301
PKGNAME =		frama-c-1.10
REVISION =		0
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
