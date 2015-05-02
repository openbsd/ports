# $OpenBSD: Makefile,v 1.4 2015/05/02 18:37:51 ajacoutot Exp $

COMMENT =		turn-based empire game

DISTNAME =		vms-empire-1.13

CATEGORIES =		games

HOMEPAGE =		http://www.catb.org/~esr/vms-empire/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ncurses

MASTER_SITES =		http://www.catb.org/~esr/vms-empire/

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}"

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

# docbook-generated lists using \h
USE_GROFF =		Yes

NO_TEST =		Yes

pre-configure:
	perl -pi -e 's,/usr,${PREFIX},g;' \
		-e 's,share/man,man,g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
