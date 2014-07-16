# $OpenBSD: Makefile,v 1.36 2014/07/16 16:13:35 brad Exp $

COMMENT=	toolkit for the development of SILC applications

DISTNAME=	silc-toolkit-1.1.12
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=silc/}
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	silc		10.0	\
		silcclient	8.0	\

HOMEPAGE=	http://silcnet.org/dev.html

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	pthread

MODULES=	converters/libiconv

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"   
BUILD_DEPENDS+= devel/yasm
.endif

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
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
