# $OpenBSD: Makefile,v 1.2 2016/01/07 21:35:28 jasper Exp $

COMMENT=		Python interface to the UNIX dialog utility

MODPY_EGG_VERSION =	3.3.0
DISTNAME=		python2-pythondialog-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		devel

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

# pythondialog.sourceforge.net for python3

MODULES=		lang/python
MODPY_PI=		Yes
NO_TEST=		Yes
RUN_DEPENDS=		misc/dialog

.include <bsd.port.mk>
