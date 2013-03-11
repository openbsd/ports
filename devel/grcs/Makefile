# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:06 espie Exp $

COMMENT=	GNU versions of the rcs utilities
DISTNAME=	rcs-5.7
PKGNAME=	g${DISTNAME}
REVISION =	0
EXTRACT_SUFX=	.tar.Z
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.cs.purdue.edu/homes/trinkle/RCS/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

USE_GROFF =	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=simple

do-install:
.for f in ci co ident merge rcs rcsclean rcsdiff rcsmerge rlog
	${INSTALL_PROGRAM} ${WRKSRC}/src/${f} ${PREFIX}/bin/g${f}
	${INSTALL_MAN} ${WRKSRC}/man/${f}.1 ${PREFIX}/man/man1/g${f}.1
.endfor

.include <bsd.port.mk>
