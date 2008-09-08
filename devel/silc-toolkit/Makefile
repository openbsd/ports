# $OpenBSD: Makefile,v 1.18 2008/09/08 15:01:31 brad Exp $

COMMENT=	toolkit for the development of SILC applications

DISTNAME=	silc-toolkit-1.1.7
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel
SHARED_LIBS=	silc		7.0	\
		silcclient	5.1	\

MASTER_SITES=	http://www.silcnet.org/download/toolkit/sources/

HOMEPAGE=	http://www.silcnet.org/software/developers/toolkit/

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"   
BUILD_DEPENDS+= :yasm-*:devel/yasm
.endif

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV+= ac_cv_path_NASM=no YASM=${LOCALBASE}/bin/yasm
.endif
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-ipv6 \
		--docdir=${PREFIX}/share/doc/silc \
		--includedir=${PREFIX}/include/silc \
		--without-libtoolfix

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+=--disable-asm
.endif

.include <bsd.port.mk>
