# $OpenBSD: Makefile,v 1.9 2005/12/26 04:05:42 brad Exp $

COMMENT=	"toolkit for the development of SILC applications"

DISTNAME=	silc-toolkit-1.0.2
CATEGORIES=	devel
MASTER_SITES=	http://www.silcnet.org/download/toolkit/sources/

HOMEPAGE=	http://www.silcnet.org/software/developers/toolkit/
		
# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	converters/libiconv

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-ipv6 \
		--with-docdir=${PREFIX}/share/doc/silc \
		--includedir=${PREFIX}/include/silc

.if (${MACHINE_ARCH} != "i386")
CONFIGURE_ARGS+=--disable-asm
.endif

.include <bsd.port.mk>
