COMMENT=		Python interface for LaTeX

MODPY_DISTV=	1.4.2
DISTNAME=		PyLaTeX-${MODPY_DISTV}
PKGNAME=		py-pylatex-${MODPY_DISTV}
REVISION=		0

CATEGORIES=		print

MAINTAINER=		Clemens Goessnitzer <clemens@goessnitzer.info>

HOMEPAGE=		https://github.com/JelteF/PyLaTeX

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PYBUILD=		setuptools
MODPY_PI=		Yes

RUN_DEPENDS=		devel/py-ordered-set \
			print/texlive/texmf,-full

.include <bsd.port.mk>
