# $OpenBSD: Makefile,v 1.10 2002/06/10 07:33:57 naddy Exp $

COMMENT=	"paragraph reflow for email"

VERSION=	1.52
DISTNAME=	Par${VERSION:S/.//}
PKGNAME=	par-${VERSION}
CATEGORIES=	textproc
NEED_VERSION=	1.515

HOMEPAGE=	http://www.cs.berkeley.edu/~amc/Par/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${HOMEPAGE}

ALL_TARGET=

do-configure:
	cd ${WRKSRC}; cp protoMakefile Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/par ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/par.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
