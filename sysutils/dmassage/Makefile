# $OpenBSD: Makefile,v 1.1.1.1 2006/01/11 18:43:02 jolan Exp $

COMMENT=		"dmesg parser"
DISTNAME=		dmassage-0.6
CATEGORIES=		sysutils
HOMEPAGE=		http://www.sentia.org/projects/dmassage/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

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
