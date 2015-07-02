# $OpenBSD: Makefile,v 1.1.1.1 2015/07/02 21:31:44 ajacoutot Exp $

COMMENT=		MTP device filesystem

DISTNAME=		${GH_PROJECT}-0.2.1

GH_COMMIT=		7452ff8cc235529c1f75a6267afd3336631dfde0
GH_PROJECT=		simple-mtpfs
GH_ACCOUNT=		phatina

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c fuse m mtp pthread usb-1.0

# C++11
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
