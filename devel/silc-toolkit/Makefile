# $OpenBSD: Makefile,v 1.3 2004/08/10 12:42:22 xsa Exp $

COMMENT=	"toolkit for the development of SILC applications"
DISTNAME=	silc-toolkit-0.9.12
CATEGORIES=	devel
MASTER_SITES=	http://www.silcnet.org/download/toolkit/sources/

HOMEPAGE=	http://www.silcnet.org/software/developers/toolkit/
		
MAINTAINER=     Pedro Martelletto <pedro@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	converters/libiconv

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-ipv6 \
		--without-irssi \
		--without-silcd \
		--with-docdir=${PREFIX}/share/doc/silc \
		--includedir=${PREFIX}/include/silc

.if (${MACHINE_ARCH} != "i386")
CONFIGURE_ARGS+=	--disable-asm
.endif

.include <bsd.port.mk>
