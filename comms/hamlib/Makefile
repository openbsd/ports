# $OpenBSD: Makefile,v 1.30 2014/06/14 10:34:44 sthen Exp $

SHARED_ONLY=	Yes

COMMENT-main=	radio/rotator control library
COMMENT-python=	python bindings for hamlib
COMMENT-tcl=	tcl bindings for hamlib

VERSION=	1.2.15.3
DISTNAME=	hamlib-${VERSION}
PKGNAME-main=	hamlib-${VERSION}
PKGNAME-python=	hamlib-python-${VERSION}
PKGNAME-tcl=	hamlib-tcl-${VERSION}
CATEGORIES=	comms hamradio
REVISION-main=	0

MULTI_PACKAGES=	-main -python -tcl

SHARED_LIBS +=	hamlib               3.0      # 2.16
SHARED_LIBS +=	hamlib++             3.0      # 2.16

HOMEPAGE=	http://hamlib.sourceforge.net/

MODULES=	lang/python \
		lang/tcl \
		converters/libiconv

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

LIBTOOL_FLAGS=		--tag=disable-static

cWANTLIB=		ltdl m pthread usb usb-1.0
WANTLIB-main=		${cWANTLIB} c stdc++ z xml2 ${MODLIBICONV_WANTLIB}
WANTLIB-python=		${cWANTLIB} hamlib ${MODPY_WANTLIB}
WANTLIB-tcl=		${cWANTLIB} hamlib ${MODTCL_WANTLIB}

LIB_DEPENDS-main=	textproc/libxml \
			devel/libusb-compat \
			devel/libtool,-ltdl
LIB_DEPENDS-python=	${BUILD_PKGPATH} \
			${MODPY_LIB_DEPENDS}
LIB_DEPENDS-tcl=	${BUILD_PKGPATH} \
			${MODTCL_LIB_DEPENDS}

BUILD_DEPENDS=		devel/swig

RUN_DEPENDS-main=	${MODLIBICONV_RUN_DEPENDS}
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}
RUN_DEPENDS-tcl=	${MODTCL_RUN_DEPENDS}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hamlib/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-cxx-binding \
			--with-perl-binding \
			--with-rpc-backends \
			--enable-tcl-binding \
			--with-python-binding \
			--without-rigmatrix \
			--with-tcl=${MODTCL_LIBDIR}
CONFIGURE_ENV=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include"

post-install:
	rm -f ${PREFIX}/lib/hamlib/*.la

.include <bsd.port.mk>
