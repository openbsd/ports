COMMENT =			just a silly git launcher, inspired by sl

GH_ACCOUNT =			rwos
GH_PROJECT =			gti
GH_TAGNAME =			v1.8.0

CATEGORIES =			games

HOMEPAGE =			http://r-wos.org/hacks/gti

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
