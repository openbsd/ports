# $OpenBSD: Makefile,v 1.2 2012/08/04 14:42:17 naddy Exp $

COMMENT=	interactive speech and audio codec

DISTNAME=	opus-0.9.14
SHARED_LIBS=	opus		0.0	# unknown
CATEGORIES=	audio

HOMEPAGE=	http://opus-codec.org/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://downloads.xiph.org/releases/opus/ \
		https://ftp.mozilla.org/pub/mozilla.org/opus/

WANTLIB=	m

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--disable-doc	# requires doxygen

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=--enable-fixed-point
.endif

.include <bsd.port.mk>
