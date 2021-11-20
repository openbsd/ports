# $OpenBSD: Makefile,v 1.1.1.1 2021/11/20 08:20:05 landry Exp $

COMMENT=		Python interface for LaTeX

MODPY_EGG_VERSION=	1.4.1
DISTNAME=		PyLaTeX-${MODPY_EGG_VERSION}
PKGNAME=		py-pylatex-${MODPY_EGG_VERSION}

CATEGORIES=		print

MAINTAINER=		Clemens Goessnitzer <clemens@goessnitzer.info>

HOMEPAGE=		https://github.com/JelteF/PyLaTeX

# MIT
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR=			python3

MODPY_SETUPTOOLS=	Yes
MODPY_PI=		Yes

RUN_DEPENDS=		devel/py-ordered-set${MODPY_FLAVOR} \
			print/texlive/texmf,-full

.include <bsd.port.mk>
