# $OpenBSD: Makefile,v 1.3 2010/11/16 11:23:28 espie Exp $

COMMENT =			Steam Locomotive
DISTNAME =			sl-3.03
CATEGORIES =			games

HOMEPAGE =			http://www.tkl.iis.u-tokyo.ac.jp/~toyoda/index_e.html

MAINTAINER =			Gallon Sylvestre <ccna.syl@gmail.com>

# BSD-like.
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP= 		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =			c curses termcap

MASTER_SITES =			http://openbsd.dead-parrot.de/distfiles/
USE_GROFF =			Yes
NO_REGRESS =			Yes
ALL_TARGET =			sl
MAKE_FLAGS +=			CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/sl $(PREFIX)/bin
	$(INSTALL_MAN) $(WRKSRC)/sl.1 $(PREFIX)/man/man1

.include <bsd.port.mk>
