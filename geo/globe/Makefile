# $OpenBSD: Makefile,v 1.8 2019/07/12 20:46:29 sthen Exp $

COMMENT=	display the currently lighted face of Earth in ASCII

DISTNAME=	globe_14Aug2014
PKGNAME=	globe-20140814
CATEGORIES=	geo

HOMEPAGE=	http://www.acme.com/software/globe/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>


# ACME (2-clause BSD)
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=		c

MAKE_FLAGS=		"CC=${CC}" "CFLAGS=${CFLAGS}" "LDFLAGS=${LDFLAGS}"

NO_TEST=		Yes

WRKDIST=		${WRKDIR}/globe

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/globe ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/globe.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
