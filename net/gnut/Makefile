# $OpenBSD: Makefile,v 1.3 2001/10/31 20:31:25 wilfried Exp $

COMMENT=	"command line gnutella client"

DISTNAME=	gnut-0.4.28
CATEGORIES=	net
NEED_VERSION=	1.488

HOMEPAGE=	http://www.gnutelliums.com/linux_unix/gnut

MAINTAINER=	Nikolay Sturm <nikolay.sturm@desy.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://tesla.desy.de/~nsturm/distfiles/ \
		${HOMEPAGE}/tars/

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
