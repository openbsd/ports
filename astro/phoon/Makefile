# $OpenBSD: Makefile,v 1.11 2019/07/17 14:49:19 danj Exp $

COMMENT=		displays the phase of the moon in ascii

DISTNAME=		phoon_29jun2005
PKGNAME=		phoon-20050629
CATEGORIES=		astro
REVISION =		1

HOMEPAGE=		http://www.acme.com/software/phoon/

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		c m

MASTER_SITES=		${HOMEPAGE}

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS} -DOS_BSD" LDFLAGS=""

WRKDIST=		${WRKDIR}/phoon
NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/phoon ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/phoon.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
