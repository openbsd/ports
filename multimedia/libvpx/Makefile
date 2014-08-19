# $OpenBSD: Makefile,v 1.16 2014/08/19 05:51:58 landry Exp $

COMMENT=	Google VP8/VP9 video codec
BROKEN-hppa =	build stuck on vp9/vp9_cx_iface.c

V=		1.3.0
DISTNAME=	libvpx-v${V}
PKGNAME=	libvpx-${V}
CATEGORIES=	multimedia
MASTER_SITES=	https://webm.googlecode.com/files/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	vpx	5.0

HOMEPAGE=	http://www.webmproject.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread

BUILD_DEPENDS+=	shells/bash

MODULES=	lang/clang

MODCLANG_ARCHS=	amd64 i386

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/yasm
.endif

BASH=		${LOCALBASE}/bin/bash
SUBST_VARS=	BASH

MAKE_FLAGS=	LIBVPX_VERSION=${LIBvpx_VERSION} verbose=yes

# compiler spins at 100% CPU on vp9/vp9_cx_iface.c. using -O1
# works around the issue.
.if ${MACHINE_ARCH} == "sparc64"
CFLAGS+=	-O1
.endif

USE_GMAKE=	Yes
CONFIGURE_STYLE= simple
CONFIGURE_ARGS+=--prefix=${PREFIX} \
		--disable-optimizations \
		--disable-unit-tests
CONFIGURE_ENV=	LD="${CC}"
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV+=	CC="clang"
.endif

NO_TEST=	Yes

ALL_TARGET=

SUBST_FILES=	examples/gen_example_code.sh \
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
