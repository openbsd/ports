# $OpenBSD: Makefile,v 1.11 2019/09/30 12:51:25 kili Exp $

COMMENT=	C compiler for GMC-4

DISTNAME=	gmc4cc-0.6.2
CATEGORIES=	devel lang

REVISION=	5

# Japanese, use this for the English version: http://goo.gl/LPtgg
HOMEPAGE=	http://terus.jp/engineering/gmc4cc/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB +=	c charset ffi gmp iconv m pthread

MASTER_SITES=	${HOMEPAGE}/files/
MASTER_SITES0=	http://distfiles.nl/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		gmc4cc-samples-0.1${EXTRACT_SUFX}:0

BUILD_DEPENDS=	lang/ghc
LIB_DEPENDS=	converters/libiconv \
		devel/gmp \
		devel/libffi
WRKDIST= 	${WRKDIR}/gmc4cc

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gmc4cc ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gmc4cc/
	cp -R ${WRKDIR}/gmc4cc-samples-0.1/* ${PREFIX}/share/examples/gmc4cc/

.include <bsd.port.mk>
