# $OpenBSD: Makefile,v 1.3 2010/08/30 22:24:15 jasper Exp $

COMMENT =	code coverage measurement for Python

MODPY_EGG_VERSION = 3.3.1
DISTNAME =	coverage-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

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
