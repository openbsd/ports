# $OpenBSD: Makefile,v 1.16 2002/12/23 00:37:50 pvalchev Exp $

COMMENT=	"external MIME packer/unpacker"

V=		1.5
DISTNAME=	mpack-${V}-src
PKGNAME=	mpack-${V}p1
CATEGORIES=	converters mail news

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.andrew.cmu.edu/pub/mpack/
EXTRACT_SUFX=	.tar.Z

WRKDIST=	${WRKDIR}/mpack
MAKE_ENV=	CC="${CC}" CFLAGS="${CFLAGS}"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mpack ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/munpack ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/unixpk.man ${PREFIX}/man/man1/mpack.1
	${INSTALL_MAN} ${WRKSRC}/unixunpk.man ${PREFIX}/man/man1/munpack.1

.include <bsd.port.mk>
