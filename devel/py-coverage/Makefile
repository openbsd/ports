# $OpenBSD: Makefile,v 1.2 2010/04/21 22:37:21 fgsch Exp $

COMMENT =	code coverage measurement for Python

MODPY_EGG_VERSION = 3.3.1
DISTNAME =	coverage-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	http://nedbatchelder.com/code/coverage

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=c/coverage/}

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes 

NO_REGRESS =	Yes

post-extract:
	$(CHMOD) -R a+r ${WRKSRC}

.include <bsd.port.mk>
