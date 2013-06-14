# $OpenBSD: Makefile,v 1.1.1.1 2013/06/14 16:02:07 robert Exp $

COMMENT =			just a silly git launcher, inspired by sl
DISTNAME =			gti-1.0
CATEGORIES =			games

HOMEPAGE =			http://r-wos.org/hacks/gti

MAINTAINER =			Robert Nagy <robert@openbsd.org>

# BSD-like.
PERMIT_PACKAGE_CDROM=		Yes

WANTLIB =			c

MASTER_SITES =			http://nerd.hu/distfiles/
NO_TEST =			Yes

do-build:
	cd ${WRKDIST} && ${CC} ${CFLAGS} -o gti gti.c

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/gti $(PREFIX)/bin
	$(INSTALL_MAN) $(WRKSRC)/gti.6 $(PREFIX)/man/man6

.include <bsd.port.mk>
