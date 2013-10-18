# $OpenBSD: Makefile,v 1.24 2013/10/18 11:29:42 naddy Exp $

# WARNING: When trying to update this port to 4.x.x, please be
# aware that the following ports need adjustments for the new
# OTRv4 API:
# net/climm
# net/bitlbee,otr
# net/mcabber (diff ready)

COMMENT=	portable OTR messaging library and toolkit

DISTNAME=	libotr-4.0.0
CATEGORIES=	security

SHARED_LIBS +=  otr                  4.0      # 5.0

HOMEPAGE=	http://www.cypherpunks.ca/otr/

MASTER_SITES=	${HOMEPAGE}

MAINTAINER =	Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gcrypt gpg-error

MODULES=	devel/gettext

LIB_DEPENDS=	security/libgcrypt

# non-shared does not inherit LIB_DEPENDS
LIB_DEPENDS +=	security/libgpg-error

USE_LIBTOOL = 		gnu

AUTOCONF_VERSION = 	2.65
AUTOMAKE_VERSION = 	1.11
CONFIGURE_STYLE=	autoconf automake
# PIE is taken care of on a per-arch basis on OpenBSD, and stack
# protection is enabled anyway.
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gcc-hardening \
			--disable-linker-hardening

.include <bsd.port.mk>
