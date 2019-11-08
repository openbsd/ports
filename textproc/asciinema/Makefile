# $OpenBSD: Makefile,v 1.9 2019/11/08 22:44:27 kmos Exp $

COMMENT=		terminal session recorder

MODPY_EGG_VERSION=	2.0.2

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
