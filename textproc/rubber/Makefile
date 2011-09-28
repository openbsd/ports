# $OpenBSD: Makefile,v 1.1.1.1 2011/09/28 14:13:03 ajacoutot Exp $

COMMENT=	wrapper for LaTeX and friends

MODPY_EGG_VERSION=	1.1
DISTNAME=	rubber-${MODPY_EGG_VERSION}

CATEGORIES=	textproc print

HOMEPAGE=	https://launchpad.net/rubber/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
