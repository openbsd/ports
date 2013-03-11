# $OpenBSD: Makefile,v 1.3 2013/03/11 11:06:05 espie Exp $

COMMENT=	japanese true type fonts

DISTNAME=	sazanami-20040629
PKGNAME=	ja-${DISTNAME:S/-/-ttf-/}
REVISION=	2
CATEGORIES=	fonts japanese x11
EXTRACT_SUFX=	.tar.bz2

# BSD
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE=		http://wiki.fdiary.net/font/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE_JP:=efont/10087/}

NO_BUILD=		Yes
NO_TEST=		Yes

PKG_ARCH=		*

INST_DIR=		${PREFIX}/lib/X11/fonts/sazanami/

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.ttf ${INST_DIR}

.include <bsd.port.mk>
