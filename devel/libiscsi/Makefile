COMMENT=	client-side library to implement the iSCSI protocol

DISTNAME=	libiscsi-1.20.0
REVISION=	0
GH_ACCOUNT=	sahlberg
GH_PROJECT=	libiscsi
GH_COMMIT=	b8d9fbf5e3120dde1a95ca7d873117f4e911b86c
CATEGORIES=	devel net

SHARED_LIBS=	iscsi	2.1

HOMEPAGE=	https://github.com/sahlberg/libiscsi

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+, GPLv2+ and PD
PERMIT_PACKAGE=	Yes

# uses -Wvla -Wno-stringop-truncation
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB=	c

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16

USE_GMAKE=	Yes
CONFIGURE_STYLE= 	autoreconf

CONFIGURE_ARGS+=	--disable-werror \
			--without-gnutls \
			--without-libgcrypt

.include <bsd.port.mk>
