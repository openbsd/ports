# $OpenBSD: Makefile,v 1.6 2019/07/12 20:46:12 sthen Exp $

COMMENT=	japanese true type fonts

DISTNAME=	sazanami-20040629
PKGNAME=	ja-${DISTNAME:S/-/-ttf-/}
REVISION=	3
CATEGORIES=	fonts japanese x11
EXTRACT_SUFX=	.tar.bz2

# BSD
PERMIT_PACKAGE=	Yes

HOMEPAGE=		http://wiki.fdiary.net/font/
MASTER_SITES=		${MASTER_SITE_OSDN_JP:=efont/10087/}

NO_BUILD=		Yes
NO_TEST=		Yes

PKG_ARCH=		*

INST_DIR=		${PREFIX}/share/fonts/sazanami/

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${INST_DIR}

.include <bsd.port.mk>
