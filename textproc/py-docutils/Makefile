# $OpenBSD: Makefile,v 1.8 2009/03/25 00:56:54 martynas Exp $

COMMENT =	process plaintext documentation into other formats

MODPY_EGG_VERSION = 0.5
DISTNAME =	docutils-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	textproc

MAINTAINER =	Ben Lovett <ben@tilderoot.com>

HOMEPAGE =	http://docutils.sourceforge.net/

# BSD/GPL/Python Software License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=docutils/}

MODULES =	lang/python

pre-build:
.for file in 2html 2s5 2latex 2newlatex 2xml 2pseudoxml pep2html
	@mv ${WRKSRC}/tools/rst${file}{.py,}
.endfor

do-regress: fake
	@cd ${WRKSRC}/test && ${MODPY_BIN} ./alltests.py

.include <bsd.port.mk>
