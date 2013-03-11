# $OpenBSD: Makefile,v 1.12 2013/03/11 11:35:55 espie Exp $

COMMENT =	Python interface to Amazon Web Services

MODPY_EGG_VERSION = 1.7a
DISTNAME =	boto-${MODPY_EGG_VERSION}
PKGNAME = 	py-${DISTNAME}
REVISION =	3
CATEGORIES =	net

HOMEPAGE =	http://code.google.com/p/boto/
MASTER_SITES =	http://boto.googlecode.com/files/ \
		${MASTER_SITE_PYPI:=b/boto/} \
		http://release.ingeniweb.com/pypi.python.org-mirror/boto/

MAINTAINER =	Jim Razmus II <jim@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

NO_TEST = 		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-boto
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-boto
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/py-boto

.include <bsd.port.mk>
