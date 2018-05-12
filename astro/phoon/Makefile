# $OpenBSD: Makefile,v 1.9 2018/05/12 09:41:31 espie Exp $

COMMENT=		displays the phase of the moon in ascii

DISTNAME=		phoon_29jun2005
PKGNAME=		phoon-20050629
CATEGORIES=		astro
REVISION =		0

HOMEPAGE=		http://www.acme.com/software/phoon/

MAINTAINER=		Nick Nauwelaerts <nick@nauwelaerts.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

MASTER_SITES=		${HOMEPAGE}

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS} -DOS_BSD" LDFLAGS=""

WRKDIST=		${WRKDIR}/phoon
NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/phoon ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/phoon.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
