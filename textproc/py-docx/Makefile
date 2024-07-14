COMMENT=	 	library for processing .docx files

MODPY_EGG_VERSION=	1.1.2
DISTNAME=		python_docx-${MODPY_EGG_VERSION}
PKGNAME=		py-docx-${MODPY_EGG_VERSION}
CATEGORIES=		textproc

HOMEPAGE=		https://github.com/python-openxml/python-docx

# MIT
PERMIT_PACKAGE=		yes

MODULES=		lang/python

MODPY_PYBUILD=		setuptools
MODPY_PI=		Yes

FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS=		devel/py-typing-extensions${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR}

TEST_DEPENDS=           devel/py-parsing${MODPY_FLAVOR}

.include <bsd.port.mk>
