# $OpenBSD: Makefile,v 1.10 2020/07/03 21:13:12 sthen Exp $

COMMENT=		terminal session recorder

MODPY_EGG_VERSION=	2.0.2
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
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
