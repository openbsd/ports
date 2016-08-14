# $OpenBSD: Makefile,v 1.11 2016/08/14 11:05:20 jasper Exp $

COMMENT=		dmesg parser
DISTNAME=		dmassage-0.6
REVISION=		4
CATEGORIES=		sysutils

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://distfiles.nl/

NO_TEST=		Yes
NO_BUILD=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/dmassage ${PREFIX}/bin/dmassage
	/usr/bin/pod2man ${WRKSRC}/dmassage > ${WRKSRC}/dmassage.1
	${INSTALL_MAN} ${WRKSRC}/dmassage.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
