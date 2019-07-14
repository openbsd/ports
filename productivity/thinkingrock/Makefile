# $OpenBSD: Makefile,v 1.20 2019/07/14 00:39:39 naddy Exp $

COMMENT=	collecting and processing thoughts according to GTD

V=		2.2.1
DISTNAME=	tr-$V
PKGNAME=	thinkingrock-${V}
REVISION=	6
CATEGORIES=	productivity

HOMEPAGE=	http://www.trgtd.com.au/

# CDDL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=thinkingrock/}

MODULES=	java
MODJAVA_VER=	1.8+

RUN_DEPENDS=	java/javaPathHelper \
		devel/xdg-utils

NO_BUILD=	Yes
NO_TEST=	Yes

PKG_ARCH=	*

do-configure:
	${SUBST_CMD} ${WRKSRC}/bin/tr

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/thinkingrock
	for d in etc ide10 platform9 tr; do \
		cp -R ${WRKSRC}/$$d ${PREFIX}/share/thinkingrock; \
	done
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/thinkingrock
	${INSTALL_SCRIPT} ${WRKSRC}/bin/tr ${PREFIX}/bin/thinkingrock

.include <bsd.port.mk>
