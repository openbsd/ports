# $OpenBSD: Makefile,v 1.3 2019/07/12 20:45:52 sthen Exp $

COMMENT=		Python interface to the UNIX dialog utility

MODPY_EGG_VERSION =	3.3.0
DISTNAME=		python2-pythondialog-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

# pythondialog.sourceforge.net for python3

MODULES=		lang/python
MODPY_PI=		Yes
NO_TEST=		Yes
RUN_DEPENDS=		misc/dialog

.include <bsd.port.mk>
