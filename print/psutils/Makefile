COMMENT=	manipulate PDF and PostScript documents

MODPY_DISTV=	3.3.9
DISTNAME=	psutils-${MODPY_DISTV}

CATEGORIES=	print

HOMEPAGE=	https://github.com/rrthomas/psutils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/rrthomas/psutils/releases/download/v${MODPY_DISTV}/

MODULES=	lang/python

MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	devel/py-puremagic \
		devel/py-test-datafiles \
		graphics/py-wand \
		print/libpaper \
		print/py-pypdf \
		textproc/argparse-manpage

RUN_DEPENDS=	devel/py-puremagic \
		print/libpaper \
		print/py-pypdf

FIX_EXTRACT_PERMISSIONS=	Yes

.include <bsd.port.mk>
