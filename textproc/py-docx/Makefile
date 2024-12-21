COMMENT=	 	library for processing .docx files

MODPY_DISTV=	1.1.2
DISTNAME=		python_docx-${MODPY_DISTV}
PKGNAME=		py-docx-${MODPY_DISTV}
CATEGORIES=		textproc
REVISION=		0

HOMEPAGE=		https://github.com/python-openxml/python-docx

# MIT
PERMIT_PACKAGE=		yes

MODULES=		lang/python

MODPY_PYBUILD=		setuptools
MODPY_PI=		Yes

RUN_DEPENDS=		devel/py-typing-extensions \
			textproc/py-lxml

TEST_DEPENDS=           devel/py-parsing

.include <bsd.port.mk>
