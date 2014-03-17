# $OpenBSD: Makefile,v 1.13 2014/03/17 14:01:08 brad Exp $

COMMENT=	Google VP8 video codec

V=		1.2.0
DISTNAME=	libvpx-v${V}
PKGNAME=	libvpx-${V}
CATEGORIES=	multimedia
MASTER_SITES=	https://webm.googlecode.com/files/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	vpx	4.1

HOMEPAGE=	http://www.webmproject.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread

BUILD_DEPENDS+=	shells/bash

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/yasm
.endif

BASH=		${LOCALBASE}/bin/bash
SUBST_VARS=	BASH

MAKE_FLAGS=	LIBVPX_VERSION=${LIBvpx_VERSION} verbose=yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ARGS+=--prefix=${PREFIX} \
		--disable-optimizations \
		--disable-unit-tests
CONFIGURE_ENV=	LD="${CC}"

NO_TEST=	Yes

ALL_TARGET=

SUBST_FILES=	build/make/configure.sh \
		build/make/gen_asm_deps.sh \
		build/make/version.sh \
		configure \
		examples/gen_example_code.sh \
		examples/gen_example_text.sh

pre-configure:
	@cd ${WRKDIST} && ${SUBST_CMD} ${SUBST_FILES}

post-install:
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/*
	@chmod ${BINMODE} ${PREFIX}/bin/*
	@chown ${SHAREOWN}:${SHAREGRP} ${PREFIX}/include/vpx/*.h
	@chmod ${SHAREMODE} ${PREFIX}/include/vpx/*.h
	@chown ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/lib*
	@chmod ${SHAREMODE} ${PREFIX}/lib/lib*
	@chown ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/pkgconfig/vpx.pc
	@chmod ${SHAREMODE} ${PREFIX}/lib/pkgconfig/vpx.pc

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "no"
CONFIGURE_ARGS+=--enable-shared
.endif
