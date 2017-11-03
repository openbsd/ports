# $OpenBSD: Makefile,v 1.14 2017/11/03 14:21:04 rpe Exp $

COMMENT=		script generating a self-extractible .tgz from a directory

V=			2.3.1
DISTNAME=		makeself-${V}

GH_PROJECT=		makeself
GH_ACCOUNT=		megastep
GH_TAGNAME=		release-${V}

CATEGORIES=		archivers misc

HOMEPAGE=		http://makeself.io/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/makeself.sh ${PREFIX}/bin/makeself.sh
	${INSTALL_SCRIPT} ${WRKSRC}/makeself-header.sh \
		${PREFIX}/bin/makeself-header.sh
	${INSTALL_MAN} ${WRKSRC}/makeself.1 ${PREFIX}/man/man1/makeself.1

.include <bsd.port.mk>
