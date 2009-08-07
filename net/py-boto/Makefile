# $OpenBSD: Makefile,v 1.7 2009/08/07 08:36:52 fgsch Exp $

COMMENT =	Python interface to Amazon Web Services

MODPY_EGG_VERSION = 1.7a
DISTNAME =	boto-${MODPY_EGG_VERSION}
PKGNAME = 	py-${DISTNAME}
CATEGORIES =	net

HOMEPAGE =	http://code.google.com/p/boto/
MASTER_SITES =	http://boto.googlecode.com/files/ \
		${MASTER_SITE_PYPI:=b/boto/} \
		http://release.ingeniweb.com/pypi.python.org-mirror/boto/

MAINTAINER =	Jim Razmus II <jim@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

NO_REGRESS = 		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/boto
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/boto
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${PREFIX}/share/doc/boto

.include <bsd.port.mk>
