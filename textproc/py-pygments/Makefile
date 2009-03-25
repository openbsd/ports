# $OpenBSD: Makefile,v 1.8 2009/03/25 13:52:31 jasper Exp $
COMMENT=	Python syntax highlighter

DISTNAME=	Pygments-1.0
PKGNAME=	${DISTNAME:L:S/^/py-/}p0
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
