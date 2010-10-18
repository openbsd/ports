# $OpenBSD: Makefile,v 1.16 2010/10/18 18:00:17 espie Exp $

COMMENT=	fast anagram generator

V=		0.95
DISTNAME=	an_${V}.orig
PKGNAME=	an-${V}
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.fr.debian.org/debian/pool/main/a/an/ \
		ftp://ftp.debian.org/debian/pool/main/a/an/

# GPL - LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

WRKDIST=	${WRKDIR}/an-${V}

USE_GROFF =	Yes
NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,/usr/dict/words,/usr/share/dict/words,g' \
		${WRKSRC}/an.6

do-build:
	cd ${WRKBUILD} && \
	${CC} ${CFLAGS} an.c gan_qsort.c -o an ${LDFLAGS}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/an ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/an.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
