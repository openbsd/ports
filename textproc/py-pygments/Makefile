# $OpenBSD: Makefile,v 1.7 2009/01/15 23:10:17 djm Exp $
COMMENT=	Python syntax highlighter

DISTNAME=	Pygments-1.0
PKGNAME=	${DISTNAME:L:S/^/py-/}
CATEGORIES=    	textproc devel

HOMEPAGE=	http://pygments.org/

MAINTAINER=	Damien Miller <djm@openbsd.org>

MODULES=	lang/python
PKG_ARCH=	*

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pypi.python.org/packages/source/P/Pygments/

MODPY_SETUPTOOLS=	Yes
REGRESS_DEPENDS=	::devel/py-nose

do-regress: fake
	@cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./run.py

.include <bsd.port.mk>
