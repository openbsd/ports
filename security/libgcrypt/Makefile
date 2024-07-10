# Assembly implementations of crypto primitives.
.if ${MACHINE_ARCH} != aarch64 && ${MACHINE_ARCH} != amd64
USE_NOEXECONLY=		Yes
.endif

COMMENT=		crypto library based on code used in GnuPG

DISTNAME=		libgcrypt-1.11.0

CATEGORIES=		security

SHARED_LIBS +=  gcrypt               21.2     # 25.0

HOMEPAGE=		https://www.gnupg.org/software/libgcrypt/index.html

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c gpg-error iconv intl

SITES=			${SITE_GNUPG:=libgcrypt/}

LIB_DEPENDS=		security/libgpg-error

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-static \
			--disable-drng-support

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
