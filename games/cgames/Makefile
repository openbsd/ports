# $OpenBSD: Makefile,v 1.7 2020/03/24 15:31:30 fcambus Exp $

PORTROACH =	skipv:2.2

COMMENT =	free console games suite
DISTNAME =	cgames-2.2b
CATEGORIES =	games

HOMEPAGE =	https://www.muppetlabs.com/~breadbox/software/cgames.html

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c curses

MASTER_SITES =	https://www.muppetlabs.com/~breadbox/pub/software/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--datarootdir="${LOCALBASE}/share/cgames" \
			--disable-mouse \
			--with-ncurses

USE_GMAKE =	Yes

FAKE_FLAGS =	bindir="${DESTDIR}${PREFIX}/bin" \
		datadir="${DESTDIR}${PREFIX}/share/cgames" \
		mandir="${DESTDIR}${PREFIX}/man"

NO_TEST =	Yes

pre-configure:
	perl -pi -e "s,make,${GMAKE},g" ${WRKSRC}/Makefile

.include <bsd.port.mk>
