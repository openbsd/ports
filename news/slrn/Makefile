# $OpenBSD: Makefile,v 1.2 1998/11/20 05:17:27 marc Exp $
#

DISTNAME=	slrn0.9.5.4
PKGNAME=	slrn-0.9.5.4
CATEGORIES=	news
MASTER_SITES=	ftp://space.mit.edu/pub/davis/slrn/ \
		ftp://ftp.uni-stuttgart.de/pub/unix/misc/slang/ \
		ftp://ftp.prz.tu-berlin.de/pub/unix/news/reader/slrn/

MAINTAINER=	joey@OpenBSD.ORG

LIB_DEPENDS=	slang.1.22:${PORTSDIR}/devel/libslang

WRKSRC=		${WRKDIR}/slrn
GNU_CONFIGURE=	yes
MAN1=		slrn.1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/objs/slrn ${PREFIX}/bin
	@${MKDIR} ${PREFIX}/share/examples/slrn
	${INSTALL_DATA} ${WRKSRC}/doc/slrn.rc ${PREFIX}/share/examples/slrn
	${INSTALL_MAN} ${WRKSRC}/doc/slrn.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
