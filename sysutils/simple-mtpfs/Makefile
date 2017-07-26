# $OpenBSD: Makefile,v 1.7 2017/07/26 22:45:30 sthen Exp $

COMMENT=		MTP device filesystem

V=			0.3.0
GH_ACCOUNT=		phatina
GH_PROJECT=		simple-mtpfs
GH_TAGNAME=		simple-mtpfs-${V}
DISTNAME=		${GH_PROJECT}-0.3.0
REVISION=		0

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c fuse m mtp pthread usb-1.0 ${COMPILER_LIBCXX}

# c++11
COMPILER =		gcc

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
