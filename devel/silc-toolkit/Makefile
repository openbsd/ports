# $OpenBSD: Makefile,v 1.14 2007/10/01 21:30:06 merdely Exp $

COMMENT=	toolkit for the development of SILC applications

DISTNAME=	silc-toolkit-1.1.3
CATEGORIES=	devel
SHARED_LIBS=	silc		7.0	\
		silcclient	5.0	\

MASTER_SITES=	http://www.silcnet.org/download/toolkit/sources/

HOMEPAGE=	http://www.silcnet.org/software/developers/toolkit/

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-ipv6 \
		--docdir=${PREFIX}/share/doc/silc \
		--includedir=${PREFIX}/include/silc \
		--without-libtoolfix

.if (${MACHINE_ARCH} != "i386")
CONFIGURE_ARGS+=--disable-asm
.endif

.include <bsd.port.mk>
