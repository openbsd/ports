# $OpenBSD: Makefile,v 1.7 2013/07/15 19:47:38 naddy Exp $

COMMENT=	IETF audio codec

DISTNAME=	opus-1.0.3
SHARED_LIBS=	opus		0.2	# 4.0
CATEGORIES=	audio

HOMEPAGE=	http://opus-codec.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/opus/ \
		https://ftp.mozilla.org/pub/mozilla.org/opus/

WANTLIB=	m

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-maintainer-mode
CONFIGURE_ARGS+=--disable-doc	# requires doxygen

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--enable-fixed-point
.endif

.include <bsd.port.mk>
