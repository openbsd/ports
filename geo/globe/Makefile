# $OpenBSD: Makefile,v 1.3 2010/10/18 18:13:12 espie Exp $

COMMENT=	display the currently lighted face of Earth in ASCII

DISTNAME=	globe_26mar1994
PKGNAME=	globe-19940326
CATEGORIES=	geo

HOMEPAGE=	http://www.acme.com/software/globe/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>


# ACME (2-clause BSD)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

WANTLIB=		c

MAKE_FLAGS=		"CC=${CC}" "CFLAGS=${CFLAGS}" "LDFLAGS=${LDFLAGS}"

USE_GROFF =	Yes
NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/globe

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/globe ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/globe.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
