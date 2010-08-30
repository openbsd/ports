# $OpenBSD: Makefile,v 1.11 2010/08/30 21:47:16 jasper Exp $
COMMENT=	Python syntax highlighter

MODPY_EGG_VERSION = 1.3.1

DISTNAME=	Pygments-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:L:S/^/py-/}
REVISION=	0
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

MASTER_SITES=	${MASTER_SITE_PYPI:=P/Pygments/}

MODPY_SETUPTOOLS=	Yes
REGRESS_DEPENDS=	::devel/py-nose

do-regress: fake
	@cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./run.py

.include <bsd.port.mk>
