# $OpenBSD: Makefile,v 1.3 2013/04/16 13:03:48 ajacoutot Exp $

COMMENT=	wrapper for LaTeX and friends

MODPY_EGG_VERSION=	1.1
DISTNAME=	rubber-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	textproc print

HOMEPAGE=	https://launchpad.net/rubber/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/trunk/${MODPY_EGG_VERSION}/+download/

MODULES=	lang/python

RUN_DEPENDS=	print/texlive/base

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--python=${MODPY_BIN} \
		--datadir=${MODPY_SITEPKG}

do-install:
	cd ${WRKSRC} && \
		${MODPY_BIN} setup.py install --root ${WRKINST}

.include <bsd.port.mk>
