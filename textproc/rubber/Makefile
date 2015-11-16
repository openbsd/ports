# $OpenBSD: Makefile,v 1.4 2015/11/16 13:39:57 ajacoutot Exp $

COMMENT=	wrapper for LaTeX and friends

MODPY_EGG_VERSION=	1.3
DISTNAME=	rubber-${MODPY_EGG_VERSION}

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

do-test:
	cd ${WRKSRC}/tests && /bin/sh ./run.sh

.include <bsd.port.mk>
