# $OpenBSD: Makefile,v 1.67 2019/09/07 16:46:01 ajacoutot Exp $

COMMENT=		crypto library based on code used in GnuPG

DISTNAME=		libgcrypt-1.8.5
CATEGORIES=		security

SHARED_LIBS +=  gcrypt               19.5     # 22.5

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

.include <bsd.port.mk>
