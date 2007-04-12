# $OpenBSD: Makefile,v 1.2 2007/04/12 18:59:36 jasper Exp $

COMMENT=		"dmesg parser"
DISTNAME=		dmassage-0.6
PKGNAME=		${DISTNAME}p0
CATEGORIES=		sysutils
HOMEPAGE=		http://www.sentia.org/projects/dmassage/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.sentia.org/downloads/

NO_REGRESS=		Yes
NO_BUILD=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/dmassage ${PREFIX}/bin/dmassage
	/usr/bin/pod2man ${WRKSRC}/dmassage > ${WRKSRC}/dmassage.1
	${INSTALL_MAN} ${WRKSRC}/dmassage.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
