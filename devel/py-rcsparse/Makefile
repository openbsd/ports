# $OpenBSD: Makefile,v 1.17 2015/10/31 16:50:58 sthen Exp $

COMMENT=		RCS parsing library for Python

GH_ACCOUNT=		corecode
GH_PROJECT=		rcsparse
GH_COMMIT=		206bca0b90f5780815c0b6c6cbccfd03f27f6985

DISTNAME=		py-rcsparse-20151027

CATEGORIES=     	devel

# AGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=		${MODPY_WANTLIB} pthread

USE_GMAKE=		Yes
MODULES=		lang/python
NO_TEST=		Yes

.include <bsd.port.mk>
