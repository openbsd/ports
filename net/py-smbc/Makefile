# $OpenBSD: Makefile,v 1.9 2013/03/11 11:35:55 espie Exp $

COMMENT=	Python bindings to wrap the libsmbclient API

MODPY_EGG_VERSION=	1.0.13
DISTNAME=	pysmbc-${MODPY_EGG_VERSION}
PKGNAME=	py-smbc-${MODPY_EGG_VERSION}

CATEGORIES=	net

HOMEPAGE=	http://cyberelk.net/tim/software/pysmbc/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += smbclient ${MODPY_WANTLIB}

MASTER_SITES=	${MASTER_SITE_PYPI:=p/pysmbc/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python

LIB_DEPENDS=	net/samba \
		${MODPY_LIB_DEPENDS}

CFLAGS+=	-I${LOCALBASE}/include -DVERSION=\"${MODPY_EGG_VERSION}\"
LDFLAGS+=	-L${LOCALBASE}/lib
MAKE_ENV=	PYTHON="${MODPY_BIN}" \
		CFLAGS="${CFLAGS}" \
		LDFLAGS="${LDFLAGS}"

NO_TEST=	Yes

.include <bsd.port.mk>
