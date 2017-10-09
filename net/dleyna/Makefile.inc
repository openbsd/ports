# $OpenBSD: Makefile.inc,v 1.5 2017/10/09 17:45:27 ajacoutot Exp $

CATEGORIES ?=		net multimedia
HOMEPAGE ?=		https://01.org/dleyna/

GH_ACCOUNT ?=		01org
GH_TAGNAME ?=		0.6.0

MAINTAINER ?=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=		Yes
LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE ?=	gnu

CONFIGURE_SCRIPT=	${LOCALBASE}/bin/bash configure
BUILD_DEPENDS +=	shells/bash

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

pre-configure:
# triggers on base system libs functions
	sed -i 's|AS_VAR_APPEND.*" -Wl,--no-undefined"||' \
		${WRKSRC}/m4/compiler-flags.m4

	cd ${WRKSRC} && env -i \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -fi
