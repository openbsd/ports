# $OpenBSD: Makefile,v 1.13 2021/11/02 00:02:35 sthen Exp $

COMMENT=		terminal session recorder

MODPY_EGG_VERSION=	2.1.0
REVISION=		0

# MODPY_PI does not work
GH_PROJECT=		asciinema
GH_ACCOUNT=		asciinema
GH_TAGNAME=		v${MODPY_EGG_VERSION}

CATEGORIES=		textproc graphics

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
