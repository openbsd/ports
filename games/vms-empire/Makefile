COMMENT =		turn-based empire game

DISTNAME =		vms-empire-1.16

CATEGORIES =		games

HOMEPAGE =		http://www.catb.org/~esr/vms-empire/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c curses

MASTER_SITES =		http://www.catb.org/~esr/vms-empire/

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}"

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

NO_TEST =		Yes

pre-configure:
	perl -pi -e 's,/usr,${PREFIX},g;' \
		-e 's,share/man,man,g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
