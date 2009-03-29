# $OpenBSD: Makefile,v 1.1.1.1 2009/03/29 23:58:24 fgsch Exp $

COMMENT =	wsgi request and response object

MODPY_EGG_VERSION = 0.9.6.1
DISTNAME =	WebOb-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www devel

HOMEPAGE =	http://pythonpaste.org/webob/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=W/WebOb/}

MODULES =	lang/python

REGRESS_DEPENDS =	::devel/py-nose \
			::devel/py-dtopt \
			::www/py-repoze-profile \
			::www/py-tempita \
			::www/py-webtest \
			::www/py-wsgiproxy

MODPY_SETUPTOOLS =	Yes

DOCS =		differences.txt do-it-yourself.txt index.txt news.txt \
		reference.txt
EXAMPLES =	comment-example.txt file-example.txt jsonrpc-example.txt \
		wiki-example.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-webob
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-webob
	cd ${WRKSRC}/docs && ${INSTALL_DATA} ${DOCS} \
	    ${PREFIX}/share/doc/py-webob
	cd ${WRKSRC}/docs && ${INSTALL_DATA} ${EXAMPLES} \
	    ${PREFIX}/share/examples/py-webob

do-regress:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests lib tests

.include <bsd.port.mk>
