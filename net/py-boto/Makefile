# $OpenBSD: Makefile,v 1.4 2009/02/09 00:28:01 sthen Exp $

COMMENT =	Python interface to Amazon Web Services

MODPY_EGG_VERSION = 1.6b
DISTNAME =	boto-${MODPY_EGG_VERSION}
PKGNAME = 	py-${DISTNAME}
CATEGORIES =	net

HOMEPAGE =	http://code.google.com/p/boto/
MASTER_SITES =	http://boto.googlecode.com/files/ \
		http://pypi.python.org/packages/source/b/boto/ \
		http://release.ingeniweb.com/pypi.python.org-mirror/boto/

MAINTAINER =	Bruno Bigras <bruno@burnbox.net>

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
