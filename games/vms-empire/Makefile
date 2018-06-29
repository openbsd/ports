# $OpenBSD: Makefile,v 1.8 2018/06/29 22:16:15 espie Exp $

COMMENT =		turn-based empire game

DISTNAME =		vms-empire-1.14
REVISION =		2

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

NO_TEST =		Yes

pre-configure:
	perl -pi -e 's,/usr,${PREFIX},g;' \
		-e 's,share/man,man,g' ${WRKSRC}/Makefile

.include <bsd.port.mk>
