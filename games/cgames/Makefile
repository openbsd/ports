# $OpenBSD: Makefile,v 1.4 2018/04/26 20:08:23 ajacoutot Exp $

PORTROACH =	skipv:2.2

COMMENT =	free console games suite
DISTNAME =	cgames-2.2a
CATEGORIES =	games
REVISION =	0

HOMEPAGE =	http://www.muppetlabs.com/~breadbox/software/cgames.html

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ncurses

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
