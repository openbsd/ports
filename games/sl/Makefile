# $OpenBSD: Makefile,v 1.10 2019/07/17 14:49:22 danj Exp $

COMMENT =			Steam Locomotive

GH_ACCOUNT =			mtoyoda
GH_PROJECT =			sl
GH_TAGNAME =			5.02
REVISION =			1

CATEGORIES =			games

# BSD-like
PERMIT_PACKAGE =		Yes

WANTLIB =			c curses

NO_TEST =			Yes
ALL_TARGET =			sl
MAKE_FLAGS +=			CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/sl $(PREFIX)/bin
	$(INSTALL_MAN) $(WRKSRC)/sl.1 $(PREFIX)/man/man1

.include <bsd.port.mk>
