# $OpenBSD: Makefile,v 1.15 2017/04/28 22:24:36 ajacoutot Exp $

COMMENT=		module and program for processing ID3 tags

MODPY_EGG_VERSION=	0.7.11
DISTNAME=		eyeD3-${MODPY_EGG_VERSION}
CATEGORIES=		audio

HOMEPAGE=		http://eyed3.nicfit.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}releases/

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

FAKE_FLAGS=		docdir=${WRKINST}${PREFIX}/share/doc/py-eyed3

NO_TEST=		Yes

pre-build:
	${SUBST_CMD} ${WRKSRC}/bin/eyeD3

.include <bsd.port.mk>
