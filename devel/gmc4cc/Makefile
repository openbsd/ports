# $OpenBSD: Makefile,v 1.1.1.1 2011/08/25 18:53:35 jasper Exp $

COMMENT=	C compiler for GMC-4

DISTNAME=	gmc4cc-0.6.2
CATEGORIES=	devel lang

# Japanese, use this for the English version: http://goo.gl/LPtgg
HOMEPAGE=	http://terus.jp/engineering/gmc4cc/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/

MODULES=	converters/libiconv

WANTLIB += c gmp m pthread util

BUILD_DEPENDS=	lang/ghc
LIB_DEPENDS=	devel/gmp

WRKDIST= 	${WRKDIR}/gmc4cc/

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gmc4cc ${PREFIX}/bin/

.include <bsd.port.mk>
