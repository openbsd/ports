# $OpenBSD: Makefile,v 1.19 2004/11/24 00:11:04 espie Exp $

COMMENT=	"powerful make utility"

DISTNAME=	xmake-1.05
CATEGORIES=	devel
HOMEPAGE=	http://apollo.backplane.com/xmake/

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tgz

WRKDIST=	${WRKDIR}/xmake
MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"

pre-build:
	@rm -rf ${WRKSRC}/obj

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/xmake ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xmake.1     ${PREFIX}/man/man1

NO_REGRESS=	Yes

.include <bsd.port.mk>
