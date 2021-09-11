# $OpenBSD: Makefile,v 1.21 2021/09/11 18:02:15 rsadowski Exp $

COMMENT=		script generating a self-extractible .tgz from a directory

GH_ACCOUNT=		megastep
GH_PROJECT=		makeself
GH_TAGNAME=		release-2.4.5

CATEGORIES=		archivers misc

HOMEPAGE=		https://makeself.io/

# GPLv2+
PERMIT_PACKAGE=	Yes

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/makeself.sh ${PREFIX}/bin/makeself.sh
	${INSTALL_SCRIPT} ${WRKSRC}/makeself-header.sh \
		${PREFIX}/bin/makeself-header.sh
	${INSTALL_MAN} ${WRKSRC}/makeself.1 ${PREFIX}/man/man1/makeself.1

.include <bsd.port.mk>
