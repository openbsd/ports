# $OpenBSD: Makefile,v 1.6 2013/10/11 23:49:39 naddy Exp $

COMMENT =			Steam Locomotive
DISTNAME =			sl-3.03
REVISION =			0
CATEGORIES =			games

HOMEPAGE =			http://www.tkl.iis.u-tokyo.ac.jp/~toyoda/index_e.html

MAINTAINER =			Gallon Sylvestre <ccna.syl@gmail.com>

# BSD-like.
PERMIT_PACKAGE_CDROM=		Yes

WANTLIB =			c curses termcap

MASTER_SITES =			http://openbsd.dead-parrot.de/distfiles/
NO_TEST =			Yes
ALL_TARGET =			sl
MAKE_FLAGS +=			CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/sl $(PREFIX)/bin
	$(INSTALL_MAN) $(WRKSRC)/sl.1 $(PREFIX)/man/man1

.include <bsd.port.mk>
