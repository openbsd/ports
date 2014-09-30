# $OpenBSD: Makefile,v 1.5 2014/09/30 19:28:26 landry Exp $

COMMENT =		an extensible platform for analysis of C software
#Error: Error while linking /usr/local/lib/ocaml/vmthreads/stdlib.cma(String):
#Reference to undefined global `Bytes'
BROKEN-powerpc =	Error while linking /usr/local/lib/ocaml/vmthreads/stdlib.cma
BROKEN-alpha =		Error while linking /usr/local/lib/ocaml/vmthreads/stdlib.cma

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
