# $OpenBSD: Makefile,v 1.9 2019/01/17 23:30:34 ajacoutot Exp $

COMMENT=		MTP device filesystem

V=			0.3.0
GH_ACCOUNT=		phatina
GH_PROJECT=		simple-mtpfs
GH_TAGNAME=		simple-mtpfs-${V}
DISTNAME=		${GH_PROJECT}-0.3.0
REVISION=		1

CATEGORIES=		sysutils

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c fuse m mtp pthread usb-1.0 ${COMPILER_LIBCXX}

# c++11
COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE=	gnu

LIB_DEPENDS=		devel/libmtp

MAKE_FILE=		makefile

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/gettext

CPPFLAGS +=	-I${LOCALBASE}/include
LDFLAGS +=	-L${LOCALBASE}/lib

CONFIGURE_ENV +=	CPPFLAGS="${CPPFLAGS}" LDFLAGS="${LDFLAGS}"

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		/bin/sh ./autogen.sh

.include <bsd.port.mk>
