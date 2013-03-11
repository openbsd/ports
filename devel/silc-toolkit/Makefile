# $OpenBSD: Makefile,v 1.32 2013/03/11 10:50:31 espie Exp $

COMMENT=	toolkit for the development of SILC applications

DISTNAME=	silc-toolkit-1.1.10
REVISION =	3
CATEGORIES=	devel
MASTER_SITES=	http://www.silcnet.org/download/toolkit/sources/

SHARED_LIBS=	silc		9.0	\
		silcclient	7.0	\

HOMEPAGE=	http://www.silcnet.org/software/developers/toolkit/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=   Yes

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"   
BUILD_DEPENDS+= devel/yasm
.endif

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.63
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV+= ac_cv_path_NASM=no YASM=${LOCALBASE}/bin/yasm
.endif
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--docdir=${PREFIX}/share/doc/silc \
		--includedir=${PREFIX}/include/silc

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+=--disable-asm
.endif

.include <bsd.port.mk>
