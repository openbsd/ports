# $OpenBSD: Makefile,v 1.20 2019/12/28 15:13:25 sthen Exp $

COMMENT=		module and program for processing ID3 tags

MODPY_EGG_VERSION=	0.8.12
DISTNAME=		eyeD3-${MODPY_EGG_VERSION}
CATEGORIES=		audio

HOMEPAGE=		http://eyed3.nicfit.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}releases/

MODULES=		lang/python
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
RUN_DEPENDS=		devel/py-magic${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

MODPY_SETUPTOOLS=	Yes

FAKE_FLAGS=		docdir=${WRKINST}${PREFIX}/share/doc/py-eyed3

MODPY_PYTEST=		Yes

# needs factory_boy
NO_TEST=		Yes

.include <bsd.port.mk>
