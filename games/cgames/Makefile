# $OpenBSD: Makefile,v 1.6 2019/07/12 20:46:15 sthen Exp $

PORTROACH =	skipv:2.2

COMMENT =	free console games suite
DISTNAME =	cgames-2.2a
CATEGORIES =	games
REVISION =	1

HOMEPAGE =	http://www.muppetlabs.com/~breadbox/software/cgames.html

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c curses

MASTER_SITES =	http://www.muppetlabs.com/~breadbox/pub/software/

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
