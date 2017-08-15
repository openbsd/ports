# $OpenBSD: Makefile,v 1.1.1.1 2017/08/15 01:02:40 naddy Exp $

COMMENT=	speech processing DSP library

DISTNAME=	speexdsp-1.2rc3
CATEGORIES=	audio
HOMEPAGE=	https://speex.org/
SHARED_LIBS=	speexdsp	1.0	# 6.0

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/speex/

WANTLIB=	m

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.if ${MACHINE_ARCH} == "aarch64"
# inline assembly errors
CONFIGURE_ARGS+=--disable-neon
.endif

.include <bsd.port.mk>
