# $OpenBSD: Makefile,v 1.10 2006/01/09 15:08:14 aanriot Exp $

COMMENT=	"toolkit for the development of SILC applications"

DISTNAME=	silc-toolkit-1.0.2
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	silc		6.1	\
		silc-1.0	6.1	\
		silcclient	4.2	\
		silcclient-1.0	4.2

CATEGORIES=	devel
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
		--with-docdir=${PREFIX}/share/doc/silc \
		--includedir=${PREFIX}/include/silc \
		--without-libtoolfix

.if (${MACHINE_ARCH} != "i386")
CONFIGURE_ARGS+=--disable-asm
.endif

.include <bsd.port.mk>
