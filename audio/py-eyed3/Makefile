# $OpenBSD: Makefile,v 1.16 2019/02/14 12:36:36 sthen Exp $

COMMENT=		module and program for processing ID3 tags

MODPY_EGG_VERSION=	0.8.9
DISTNAME=		eyeD3-${MODPY_EGG_VERSION}
CATEGORIES=		audio

HOMEPAGE=		http://eyed3.nicfit.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}releases/

MODULES=		lang/python
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
RUN_DEPENDS=		devel/py-magic${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

MODPY_SETUPTOOLS=	Yes

FAKE_FLAGS=		docdir=${WRKINST}${PREFIX}/share/doc/py-eyed3

NO_TEST=		Yes

.include <bsd.port.mk>
