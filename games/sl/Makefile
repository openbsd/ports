# $OpenBSD: Makefile,v 1.8 2019/05/20 20:52:33 sthen Exp $

COMMENT =			Steam Locomotive

GH_ACCOUNT =			mtoyoda
GH_PROJECT =			sl
GH_TAGNAME =			5.02
REVISION =			0

CATEGORIES =			games

MAINTAINER =			Gallon Sylvestre <ccna.syl@gmail.com>

# BSD-like
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =			c curses

NO_TEST =			Yes
ALL_TARGET =			sl
MAKE_FLAGS +=			CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/sl $(PREFIX)/bin
	$(INSTALL_MAN) $(WRKSRC)/sl.1 $(PREFIX)/man/man1

.include <bsd.port.mk>
