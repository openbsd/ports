# $OpenBSD: Makefile,v 1.3 2001/05/13 09:54:14 fgsch Exp $

COMMENT=	"banner-ad blocking proxy server"

BROKEN=		"patches need review"

PKGNAME=	junkbuster-2.0.2
DISTNAME=	ijb20
CATEGORIES=	www
NEED_VERSION=	1.364

MASTER_SITES=	http://internet.junkbuster.com/
HOMEPAGE=	http://internet.junkbuster.com/

MAINTAINER=	Wynand van Dyk <wynand@type01.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=	.tar.Z
ALL_TARGET=	

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/junkbuster
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/junkbuster
	${INSTALL_PROGRAM} ${WRKSRC}/junkbuster ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/*.ini ${PREFIX}/share/examples/junkbuster/
	${INSTALL_MAN} ${WRKSRC}/junkbuster.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/*.html ${PREFIX}/share/doc/junkbuster

.include <bsd.port.mk>
