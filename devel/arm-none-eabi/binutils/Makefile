COMMENT=	binutils for ${CONFIG} cross-development

VERSION=		2.40
DISTNAME=	binutils-${VERSION}

FLAVORS=	aarch64 arm
FLAVOR?=	arm

.if "${FLAVOR}" == "aarch64"
CONFIG=		aarch64-none-elf
.elif "${FLAVOR}" == "arm"
CONFIG=		arm-none-eabi
.else
ERRORS+=	"either aarch64 or arm FLAVOR should be set"
.endif

HOMEPAGE=	https://www.gnu.org/software/binutils/

WANTLIB=	c z

SITES=		${SITE_GNU:=binutils/}
DIST_SUBDIR=	binutils

USE_GMAKE=	Yes
USE_LIBTOOL=	No

CONFIGURE_ARGS+=--enable-commonbfdlib=no \
		--enable-interwork	 \
		--enable-multilib	\
		--without-zstd

SUBST_VARS +=	CONFIG

.include <bsd.port.mk>
