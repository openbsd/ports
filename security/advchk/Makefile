# $OpenBSD: Makefile,v 1.5 2007/05/26 14:47:46 ajacoutot Exp $

COMMENT=	"monitor the security of installed softwares"

DISTNAME=	advchk-2.00
CATEGORIES=	security

HOMEPAGE=	http://advchk.unixgu.ru/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# 2-clause BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	::www/p5-libwww

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/advchk ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/advchk-addfeeds.sh ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/advchk.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
