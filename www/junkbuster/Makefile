# $OpenBSD: Makefile,v 1.12 2005/11/14 17:23:36 pvalchev Exp $

COMMENT=	"banner-ad blocking proxy server"

PKGNAME=	junkbuster-2.0.2p2
DISTNAME=	ijb20
CATEGORIES=	www

HOMEPAGE=	http://internet.junkbuster.com/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

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
