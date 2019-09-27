# $OpenBSD: Makefile,v 1.17 2019/09/27 12:50:09 ajacoutot Exp $

COMMENT=		Python bindings to wrap the libsmbclient API

MODPY_EGG_VERSION=	1.0.18
DISTNAME=		pysmbc-${MODPY_EGG_VERSION}
PKGNAME=		py-smbc-${MODPY_EGG_VERSION}
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		net devel

HOMEPAGE=		http://cyberelk.net/tim/software/pysmbc/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += smbclient pthread ${MODPY_WANTLIB}

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

FLAVORS=		python3
FLAVOR?=

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			net/samba

CFLAGS=			-I${LOCALBASE}/include -DVERSION=\"${MODPY_EGG_VERSION}\"
LDFLAGS=		-L${LOCALBASE}/lib
MAKE_ENV=		PYTHON="${MODPY_BIN}" \
			CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}"

NO_TEST=		Yes

.include <bsd.port.mk>
