# $OpenBSD: Makefile,v 1.5 2002/08/21 21:28:51 naddy Exp $

COMMENT=	"command line gnutella client"

DISTNAME=	gnut-0.4.28
CATEGORIES=	net

MAINTAINER=	Nikolay Sturm <sturm@sec.informatik.tu-darmstadt.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.sec.informatik.tu-darmstadt.de/~sturm/ports/

RUN_DEPENDS=	:findutils-*:misc/findutils

NO_REGRESS=	Yes

SEPARATE_BUILD=	concurrent

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnut
	${INSTALL_DATA} ${WRKSRC}/GDJ ${WRKSRC}/gnutrc.sample ${PREFIX}/share/examples/gnut
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnut
	${INSTALL_DATA} ${WRKSRC}/README ${WRKSRC}/doc/TUTORIAL ${WRKSRC}/doc/gnut* ${PREFIX}/share/doc/gnut

.include <bsd.port.mk>
