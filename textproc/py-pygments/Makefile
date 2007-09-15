# $OpenBSD: Makefile,v 1.2 2007/09/15 20:59:41 merdely Exp $
COMMENT=	Python syntax highlighter

DISTNAME=	Pygments-0.8
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

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pygments/}

MODPY_SETUPTOOLS=	Yes

do-regress: fake
	@cd ${WRKSRC}/tests && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./run.py

.include <bsd.port.mk>
