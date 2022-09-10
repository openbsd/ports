COMMENT=		module and program for processing ID3 tags

MODPY_EGG_VERSION=	0.9.6
# standalone software - intentionally no py-* prefix/FLAVOR.
DISTNAME=		eyeD3-${MODPY_EGG_VERSION}
CATEGORIES=		audio
REVISION=		2

HOMEPAGE=		http://eyed3.nicfit.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${HOMEPAGE}releases/

MODULES=		lang/python
MODPY_PEP517=		poetry
RUN_DEPENDS=		devel/py-deprecation${MODPY_FLAVOR} \
			devel/py-filetype${MODPY_FLAVOR}

FAKE_FLAGS=		docdir=${WRKINST}${PREFIX}/share/doc/py-eyed3

# needs factory_boy
NO_TEST=		Yes

.include <bsd.port.mk>
