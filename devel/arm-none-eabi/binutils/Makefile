# $OpenBSD: Makefile,v 1.2 2016/12/06 17:24:02 patrick Exp $

COMMENT=	binutils for ${CONFIG} cross-development

V=		2.25
REVISION=	0
DISTNAME=	binutils-${V}

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

MASTER_SITES=	${MASTER_SITE_GNU:=binutils/}
DIST_SUBDIR=	binutils

USE_LIBTOOL=	No

CONFIGURE_ARGS+=--enable-commonbfdlib=no \
		--enable-interwork	 \
		--enable-multilib

SUBST_VARS +=	CONFIG

.include <bsd.port.mk>
