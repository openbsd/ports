# $OpenBSD: Makefile,v 1.39 2015/02/28 09:56:23 ajacoutot Exp $

COMMENT=		crypto library based on code used in GnuPG

DISTNAME=		libgcrypt-1.6.3
CATEGORIES=		security

SHARED_LIBS +=  gcrypt               19.2     # 20.3

HOMEPAGE=		http://www.gnupg.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gpg-error

MASTER_SITES=	${MASTER_SITES_GNUPG:=libgcrypt/}

MODULES=		devel/gettext
LIB_DEPENDS=		security/libgpg-error

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-static

.include <bsd.port.mk>
