# $OpenBSD: Makefile,v 1.3 2019/07/12 20:46:19 sthen Exp $

COMMENT =			just a silly git launcher, inspired by sl
DISTNAME =			gti-1.2.0
CATEGORIES =			games

HOMEPAGE =			http://r-wos.org/hacks/gti

GH_ACCOUNT =			rwos
GH_PROJECT =			gti
GH_COMMIT =			c6a32edde77fb2cf56531b87f59f133414538517

MAINTAINER =			Robert Nagy <robert@openbsd.org>

# BSD-like.
PERMIT_PACKAGE=		Yes

WANTLIB =			c

NO_TEST =			Yes

do-build:
	cd ${WRKDIST} && ${CC} ${CFLAGS} -o gti gti.c

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/gti $(PREFIX)/bin
	$(INSTALL_MAN) $(WRKSRC)/gti.6 $(PREFIX)/man/man6

.include <bsd.port.mk>
