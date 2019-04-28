# $OpenBSD: Makefile,v 1.15 2019/04/28 20:51:45 sthen Exp $

COMMENT=		Python bindings to wrap the libsmbclient API

MODPY_EGG_VERSION=	1.0.16
DISTNAME=		pysmbc-${MODPY_EGG_VERSION}
PKGNAME=		py-smbc-${MODPY_EGG_VERSION}
EXTRACT_SUFX=		.tar.bz2
REVISION=		0

CATEGORIES=		net devel

HOMEPAGE=		http://cyberelk.net/tim/software/pysmbc/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

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
