# $OpenBSD: Makefile,v 1.18 2020/03/19 14:47:04 ajacoutot Exp $

COMMENT=		Python bindings to wrap the libsmbclient API

MODPY_EGG_VERSION=	1.0.19
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
FLAVOR=			python3

LIB_DEPENDS=		${MODPY_LIB_DEPENDS} \
			net/samba

CFLAGS=			-I${LOCALBASE}/include -DVERSION=\"${MODPY_EGG_VERSION}\"
LDFLAGS=		-L${LOCALBASE}/lib
MAKE_ENV=		PYTHON="${MODPY_BIN}" \
			CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}"

NO_TEST=		Yes
DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
