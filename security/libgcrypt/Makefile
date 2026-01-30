# Assembly implementations of crypto primitives.
.if ${MACHINE_ARCH} != aarch64 && ${MACHINE_ARCH} != amd64
USE_NOEXECONLY=		Yes
.endif

COMMENT=		crypto library based on code used in GnuPG

DISTNAME=		libgcrypt-1.12.0

CATEGORIES=		security

SHARED_LIBS +=  gcrypt               22.0     # 27.0

HOMEPAGE=		https://www.gnupg.org/software/libgcrypt/index.html

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2/LGPLv2.1
PERMIT_PACKAGE=	Yes

# Needs thread-local storage
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += c gpg-error iconv intl pthread

SITES=			${SITE_GNUPG:=libgcrypt/}

LIB_DEPENDS=		security/libgpg-error

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-static \
			--disable-drng-support

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
