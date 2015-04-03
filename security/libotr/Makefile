# $OpenBSD: Makefile,v 1.26 2015/04/03 16:15:40 stsp Exp $

COMMENT=	portable OTR messaging library and toolkit

DISTNAME=	libotr-4.1.0
CATEGORIES=	security

SHARED_LIBS +=  otr                  4.1      # 6.0

HOMEPAGE=	http://otr.cypherpunks.ca/

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
