# $OpenBSD: Makefile,v 1.3 2017/01/07 19:14:49 ajacoutot Exp $

COMMENT=		MTP device filesystem

V=			0.3.0
GH_ACCOUNT=		phatina
GH_PROJECT=		simple-mtpfs
GH_TAGNAME=		simple-mtpfs-${V}
DISTNAME=		${GH_PROJECT}-0.3.0

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c fuse m mtp pthread usb-1.0

# c++11
MODULES +=		gcc4
MODGCC4_LANGS=		c++
MODGCC4_ARCHS=		*

CONFIGURE_STYLE=	gnu

LIB_DEPENDS=		devel/libmtp

MAKE_FILE=		makefile

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/gettext

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		/bin/sh ./autogen.sh

.include <bsd.port.mk>
