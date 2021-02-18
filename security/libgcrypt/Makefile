# $OpenBSD: Makefile,v 1.73 2021/02/18 06:57:29 ajacoutot Exp $

COMMENT=		crypto library based on code used in GnuPG

DISTNAME=		libgcrypt-1.9.2
CATEGORIES=		security

SHARED_LIBS +=  gcrypt               20.0     # 23.2

HOMEPAGE=		https://www.gnupg.org/software/libgcrypt/index.html

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c gpg-error iconv intl

MASTER_SITES=		${MASTER_SITE_GNUPG:=libgcrypt/}

LIB_DEPENDS=		security/libgpg-error

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.14

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--enable-static \
			--disable-drng-support

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
