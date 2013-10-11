# $OpenBSD: Makefile,v 1.6 2013/10/11 23:49:42 naddy Exp $

COMMENT=	display the currently lighted face of Earth in ASCII

DISTNAME=	globe_26mar1994
PKGNAME=	globe-19940326
CATEGORIES=	geo

HOMEPAGE=	http://www.acme.com/software/globe/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>


# ACME (2-clause BSD)
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=		c

MAKE_FLAGS=		"CC=${CC}" "CFLAGS=${CFLAGS}" "LDFLAGS=${LDFLAGS}"

NO_TEST=		Yes

WRKDIST=		${WRKDIR}/globe

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/globe ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/globe.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
