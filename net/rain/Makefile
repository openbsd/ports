# vim:ts=8
# $OpenBSD: Makefile,v 1.2 2001/08/01 10:06:08 naddy Exp $

DISTNAME=	rain-1.2.8
CATEGORIES=	net security
NEED_VERSION=	1.433

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"universal packet flooder used for testing system stability"
HOMEPAGE=	http://www.tenebrous.com/rain/
MASTER_SITES=	${HOMEPAGE}files/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

CONFIGURE_STYLE= gnu

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rain ${PREFIX}/bin
	@${GZIP_CMD} -d ${WRKSRC}/man/rain.1.gz
	${INSTALL_MAN} ${WRKSRC}/man/rain.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
