# $OpenBSD: Makefile,v 1.1.1.1 2001/07/30 07:22:36 pvalchev Exp $

DISTNAME=	rain-1.2.6
CATEGORIES=	net security
NEED_VERSION=	1.427

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"universal packet flooder used for testing system stability"
HOMEPAGE=	http://www.tenebrous.com/rain/
MASTER_SITES=	${HOMEPAGE}files/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

MAKE_ENV=	CC="${CC}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rain ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/rain
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/rain

.include <bsd.port.mk>
