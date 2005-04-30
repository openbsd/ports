# $OpenBSD: Makefile,v 1.1.1.1 2005/04/30 14:05:56 alek Exp $

COMMENT=	"tools for converting plaintext documentation into other formats"

DISTNAME=	docutils-0.3.7
PKGNAME=	py-${DISTNAME}
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
	@cp ${WRKSRC}/tools/rst2html.py ${WRKSRC}/tools/rst2html
	@cp ${WRKSRC}/tools/rst2latex.py ${WRKSRC}/tools/rst2latex

do-regress: fake
	@cd ${WRKSRC}/test && ${MAKE_ENV} \ 
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./alltests.py

.include <bsd.port.mk>
