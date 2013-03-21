# $OpenBSD: Makefile,v 1.28 2013/03/21 08:45:13 ajacoutot Exp $

COMMENT-main=	radio/rotator control library
COMMENT-python=	python bindings for hamlib
COMMENT-tcl=	tcl bindings for hamlib

VERSION=	1.2.6
DISTNAME=	hamlib-${VERSION}
PKGNAME-main=	hamlib-${VERSION}
REVISION-main =	9
PKGNAME-python=	hamlib-python-${VERSION}
REVISION-python = 10
PKGNAME-tcl=	hamlib-tcl-${VERSION}
REVISION-tcl =	9
CATEGORIES=    	comms hamradio

MULTI_PACKAGES=	-main -python -tcl

SHARED_LIBS=	hamlib 2.5 \
		hamlib++ 2.5

HOMEPAGE=	http://hamlib.sourceforge.net/

MODULES=	lang/python \
		lang/tcl \
		converters/libiconv

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

cWANTLIB =		ltdl m usb usb-1.0
WANTLIB-main =		${cWANTLIB} c stdc++ z xml2 pthread ${MODLIBICONV_WANTLIB}
WANTLIB-python =	${cWANTLIB} hamlib ${MODPY_WANTLIB}
WANTLIB-tcl =		${cWANTLIB} hamlib ${MODTCL_WANTLIB}

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

USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--with-cxx-binding \
			--with-perl-binding \
			--with-rpc-backends \
			--with-tcl-binding \
			--with-python-binding \
			--without-rigmatrix \
			--with-tcl=${MODTCL_LIBDIR}
CONFIGURE_ENV=		CPPFLAGS+="-I${LOCALBASE}/include"

.include <bsd.port.mk>
