# $OpenBSD: Makefile,v 1.12 2019/07/12 20:49:41 sthen Exp $

COMMENT=		dmesg parser
DISTNAME=		dmassage-0.6
REVISION=		4
CATEGORIES=		sysutils

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://distfiles.nl/

NO_TEST=		Yes
NO_BUILD=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/dmassage ${PREFIX}/bin/dmassage
	/usr/bin/pod2man ${WRKSRC}/dmassage > ${WRKSRC}/dmassage.1
	${INSTALL_MAN} ${WRKSRC}/dmassage.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
