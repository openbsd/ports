COMMENT=	manipulate PDF and PostScript documents

MODPY_EGG_VERSION=	3.3.2
DISTNAME=	pspdfutils-${MODPY_EGG_VERSION}
PKGNAME=	psutils-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	print

HOMEPAGE=	https://github.com/rrthomas/psutils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/rrthomas/psutils/releases/download/v${MODPY_EGG_VERSION}/

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/py-puremagic${MODPY_FLAVOR} \
		devel/py-test-datafiles${MODPY_FLAVOR} \
		graphics/py-wand${MODPY_FLAVOR} \
		print/libpaper \
		print/py-pypdf${MODPY_FLAVOR} \
		textproc/argparse-manpage

RUN_DEPENDS=	devel/py-puremagic${MODPY_FLAVOR} \
		print/libpaper \
		print/py-pypdf${MODPY_FLAVOR}

FIX_EXTRACT_PERMISSIONS=	Yes

.include <bsd.port.mk>
