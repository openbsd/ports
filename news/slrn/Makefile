# $OpenBSD: Makefile,v 1.3 1999/04/06 19:48:02 rohee Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

DISTNAME=	slrn0.9.5.4
PKGNAME=	slrn-0.9.5.4
CATEGORIES=	news
MASTER_SITES=	ftp://space.mit.edu/pub/davis/slrn/ \
		ftp://ftp.uni-stuttgart.de/pub/unix/misc/slang/ \
		ftp://ftp.prz.tu-berlin.de/pub/unix/news/reader/slrn/

MAINTAINER=	ports@OpenBSD.ORG

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
