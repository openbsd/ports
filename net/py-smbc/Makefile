# $OpenBSD: Makefile,v 1.3 2011/06/08 18:00:50 jasper Exp $

COMMENT=	Python bindings to wrap the libsmbclient API

MODPY_EGG_VERSION=	1.0.10
DISTNAME=	pysmbc-${MODPY_EGG_VERSION}
PKGNAME=	py-smbc-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	http://cyberelk.net/tim/software/pysmbc/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += smbclient

MASTER_SITES=	${MASTER_SITE_PYPI:=p/pysmbc/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python

LIB_DEPENDS=	net/samba

CFLAGS+=	-I${LOCALBASE}/include -DVERSION=\"${MODPY_EGG_VERSION}\"
LDFLAGS+=	-L${LOCALBASE}/lib
MAKE_ENV=	PYTHON="${MODPY_BIN}" \
		CFLAGS="${CFLAGS}" \
		LDFLAGS="${LDFLAGS}"

NO_REGRESS=	Yes

.include <bsd.port.mk>
