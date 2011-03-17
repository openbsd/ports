# $OpenBSD: Makefile,v 1.7 2011/03/17 16:54:16 edd Exp $

COMMENT=	Google VP8 video codec

V=		0.9.6
DISTNAME=	libvpx-v${V}
PKGNAME=	libvpx-${V}
CATEGORIES=	multimedia
MASTER_SITES=	http://webm.googlecode.com/files/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	vpx	2.0

HOMEPAGE=	http://www.webmproject.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
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
		--disable-optimizations

NO_REGRESS=	Yes

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

.include <bsd.port.mk>

.if ${NO_SHARED_LIBS:L} == "no"
CONFIGURE_ARGS+=--enable-shared
.endif
