# $OpenBSD: Makefile,v 1.9 2002/10/29 01:30:41 naddy Exp $

COMMENT=	"banner-ad blocking proxy server"

PKGNAME=	junkbuster-2.0.2p1
DISTNAME=	ijb20
CATEGORIES=	www

HOMEPAGE=	http://internet.junkbuster.com/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.Z

ALL_TARGET=	

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/junkbuster
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/junkbuster
	${INSTALL_PROGRAM} ${WRKSRC}/junkbuster ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/*.ini ${PREFIX}/share/examples/junkbuster/
	${INSTALL_MAN} ${WRKSRC}/junkbuster.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/*.html ${PREFIX}/share/doc/junkbuster
	@perl -i -p -e 's/\r//;' ${PREFIX}/share/examples/junkbuster/*.ini

.include <bsd.port.mk>
