# $OpenBSD: Makefile,v 1.16 2013/03/11 11:42:46 espie Exp $

COMMENT =	process plaintext documentation into other formats

MODPY_EGG_VERSION = 0.9.1
DISTNAME =	docutils-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	textproc
REVISION =	0

MAINTAINER =	Ben Lovett <ben@tilderoot.com>

HOMEPAGE =	http://docutils.sourceforge.net/

# BSD/GPL/Python Software License
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=docutils/}

MODULES =	lang/python

RUN_DEPENDS =	textproc/py-pygments

pre-build:
.for file in 2html 2s5 2latex 2xetex 2man 2xml 2pseudoxml 2odt 2odt_prepstyles pep2html
	@mv ${WRKSRC}/tools/rst${file}{.py,}
.endfor

do-test: fake
	@cd ${WRKSRC}/test && ${MODPY_BIN} ./alltests.py

.include <bsd.port.mk>
