# $OpenBSD: Makefile,v 1.12 2019/07/12 20:49:51 sthen Exp $

COMMENT=		MTP device filesystem

V=			0.3.0
GH_ACCOUNT=		phatina
GH_PROJECT=		simple-mtpfs
GH_TAGNAME=		simple-mtpfs-${V}
DISTNAME=		${GH_PROJECT}-0.3.0
REVISION=		1

CATEGORIES=		sysutils

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c fuse m mtp pthread usb-1.0 ${COMPILER_LIBCXX}

# c++11
COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE=	autoreconf

LIB_DEPENDS=		devel/libmtp

MAKE_FILE=		makefile

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
AUTORECONF=		/bin/sh ./autogen.sh
BUILD_DEPENDS +=	devel/gettext,-runtime

CPPFLAGS +=	-I${LOCALBASE}/include
LDFLAGS +=	-L${LOCALBASE}/lib

CONFIGURE_ENV +=	CPPFLAGS="${CPPFLAGS}" LDFLAGS="${LDFLAGS}"

.include <bsd.port.mk>
