# $OpenBSD: Makefile,v 1.9 2002/03/21 21:25:53 espie Exp $

COMMENT=	"paragraph reflow for email"

DISTNAME=       Par152
PKGNAME=        par-1.52
CATEGORIES=	textproc
NEED_VERSION=	1.515
MASTER_SITES=   http://www.cs.berkeley.edu/~amc/Par/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=

do-configure:
	(cd ${WRKSRC}; cp protoMakefile Makefile)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/par ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/par.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
