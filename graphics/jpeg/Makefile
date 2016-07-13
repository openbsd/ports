# $OpenBSD: Makefile,v 1.55 2016/07/13 09:43:39 ajacoutot Exp $

COMMENT=	SIMD-accelerated JPEG codec replacement of libjpeg

V=		1.5.0
DISTNAME=	jpeg-turbo-${V}
PKGNAME=	jpeg-${V}
REVISION=	0
EPOCH=		0

SHARED_LIBS+=	jpeg		68.1	# 64.0

CATEGORIES=	graphics
DPB_PROPERTIES=	parallel

HOMEPAGE=	http://libjpeg-turbo.virtualgl.org/

# BSD-style
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libjpeg-turbo/}
DISTFILES=	libjpeg-turbo-${V}.tar.gz

WANTLIB=	c

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=	devel/yasm
.endif

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

# Symbol versioning triggers weird linking problems in dependent ports.
CONFIGURE_ARGS+=--disable-ld-version-script \
		--without-turbojpeg

WRKDIST=	${WRKDIR}/lib${DISTNAME}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jpeg
	${INSTALL_DATA} ${WRKSRC}/libjpeg.txt ${WRKSRC}/wizard.txt \
	    ${PREFIX}/share/doc/jpeg
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jpeg
	${INSTALL_DATA} ${WRKSRC}/example.c ${PREFIX}/share/examples/jpeg
	# the turbojpeg wrapper library is disabled
	rm ${PREFIX}/lib/pkgconfig/libturbojpeg.pc

.include <bsd.port.mk>
