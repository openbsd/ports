# $OpenBSD: Makefile,v 1.19 2019/11/09 12:19:15 ajacoutot Exp $

COMMENT=		script generating a self-extractible .tgz from a directory

V=			2.4.0
DISTNAME=		makeself-${V}
REVISION=		0

GH_PROJECT=		makeself
GH_ACCOUNT=		megastep
GH_TAGNAME=		release-${V}

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
