# $OpenBSD: Makefile,v 1.17 2010/06/10 13:24:14 ajacoutot Exp $

COMMENT=	library of optimized inner loops

DISTNAME=	liboil-0.3.17
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}/download/

SHARED_LIBS+=	oil-0.3		4.0

HOMEPAGE=	http://liboil.freedesktop.org/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c m

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-glib

# XXX on amd64, gcc4 opts seem to trigger an overflow in
# oil_cpu_detect_arch() which crashes some applications
# (e.g. SIGTRAP with gst-inspect)
.if ${MACHINE_ARCH} == "amd64"
CFLAGS+=	-O
.endif

.include <bsd.port.mk>
