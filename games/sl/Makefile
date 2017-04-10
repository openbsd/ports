# $OpenBSD: Makefile,v 1.7 2017/04/10 14:01:55 fcambus Exp $

COMMENT =			Steam Locomotive

GH_ACCOUNT =			mtoyoda
GH_PROJECT =			sl
GH_TAGNAME =			5.02

CATEGORIES =			games

MAINTAINER =			Gallon Sylvestre <ccna.syl@gmail.com>

# BSD-like
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =			c ncurses

NO_TEST =			Yes
ALL_TARGET =			sl
MAKE_FLAGS +=			CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/sl $(PREFIX)/bin
	$(INSTALL_MAN) $(WRKSRC)/sl.1 $(PREFIX)/man/man1

.include <bsd.port.mk>
