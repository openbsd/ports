# $OpenBSD: Makefile,v 1.3 2006/06/03 09:49:24 alek Exp $

COMMENT=	"tools for converting plaintext documentation into other formats"

DISTNAME=	docutils-0.4
PKGNAME=	py-${DISTNAME}p0
CATEGORIES=	textproc

MAINTAINER=	Ben Lovett <ben@tilderoot.com>

HOMEPAGE=	http://docutils.sourceforge.net/

# BSD/GPL/Python Software License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=docutils/}

MODULES=	lang/python

pre-build:
.for file in html s5 latex newlatex xml pseudoxml
	@mv ${WRKSRC}/tools/rst2${file}{.py,}
.endfor

do-regress: fake
	@cd ${WRKSRC}/test && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	   ${MODPY_BIN} ./alltests.py

.include <bsd.port.mk>
