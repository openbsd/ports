# $OpenBSD: Makefile,v 1.61 2017/12/14 14:30:22 ajacoutot Exp $

COMMENT=		crypto library based on code used in GnuPG

DISTNAME=		libgcrypt-1.8.2
CATEGORIES=		security

SHARED_LIBS +=  gcrypt               19.5     # 22.2

HOMEPAGE=		http://www.gnupg.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gpg-error iconv intl

MASTER_SITES=		${MASTER_SITE_GNUPG:=libgcrypt/}

LIB_DEPENDS=		security/libgpg-error

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-static \
			--disable-drng-support

.include <bsd.port.mk>
