# $OpenBSD: Makefile,v 1.9 2013/10/11 23:50:56 naddy Exp $

COMMENT=		dmesg parser
DISTNAME=		dmassage-0.6
REVISION =		2
CATEGORIES=		sysutils
HOMEPAGE=		http://www.sentia.org/projects/dmassage/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.sentia.org/downloads/

NO_TEST=		Yes
NO_BUILD=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/dmassage ${PREFIX}/bin/dmassage
	/usr/bin/pod2man ${WRKSRC}/dmassage > ${WRKSRC}/dmassage.1
	${INSTALL_MAN} ${WRKSRC}/dmassage.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
