# $OpenBSD: Makefile,v 1.9 2015/09/29 09:02:55 edd Exp $

COMMENT=		iCalendar library for Python

MODPY_EGG_VERSION =	0.8.1rc0
REVISION =		0
DISTNAME=		vobject-0.8.1c
PKGNAME=		py-vobject-0.8.1c

CATEGORIES=		textproc devel

HOMEPAGE=		http://vobject.skyhouseconsulting.com/

# Apache 1.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-dateutil \
			devel/py-setuptools>=18.2v0

NO_TEST=		Yes

.include <bsd.port.mk>
