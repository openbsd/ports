# $OpenBSD: Makefile,v 1.12 2015/11/18 09:21:30 ajacoutot Exp $

COMMENT=		script generating a self-extractible .tgz from a directory

V=			2.2.0
DISTNAME=		makeself-${V}

GH_PROJECT=		makeself
GH_ACCOUNT=		megastep
GH_TAGNAME=		release-${V}

CATEGORIES=		archivers misc

HOMEPAGE=		http://www.megastep.org/makeself/

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
