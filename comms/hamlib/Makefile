# $OpenBSD: Makefile,v 1.24 2011/09/16 08:48:02 espie Exp $

COMMENT-main=	radio/rotator control library
COMMENT-python=	python bindings for hamlib
COMMENT-tcl=	tcl bindings for hamlib

VERSION=	1.2.6
DISTNAME=	hamlib-${VERSION}
PKGNAME-main=	hamlib-${VERSION}
REVISION-main =	7
PKGNAME-python=	hamlib-python-${VERSION}
REVISION-python = 8
PKGNAME-tcl=	hamlib-tcl-${VERSION}
REVISION-tcl =	7
CATEGORIES=    	comms hamradio

MULTI_PACKAGES=	-main -python -tcl

SHARED_LIBS=	hamlib 2.5 \
		hamlib++ 2.5

HOMEPAGE=	http://hamlib.sourceforge.net/

MODULES=	lang/python lang/tcl converters/libiconv

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

cWANTLIB =		m usb>=9
WANTLIB-main =		${cWANTLIB} c stdc++ z  xml2 ${MODLIBICONV_WANTLIB}
WANTLIB-python =	${cWANTLIB} hamlib ${MODPY_WANTLIB}
WANTLIB-tcl =		${cWANTLIB} hamlib ${MODTCL_WANTLIB}

LIB_DEPENDS-main=	textproc/libxml \
			devel/libusb
LIB_DEPENDS-python=	${BUILD_PKGPATH} \
			${MODPY_LIB_DEPENDS}
LIB_DEPENDS-tcl=	${BUILD_PKGPATH} \
			${MODTCL_LIB_DEPENDS}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=hamlib/}

USE_LIBTOOL=		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=		devel/swig

RUN_DEPENDS-main=	${MODLIBICONV_RUN_DEPENDS}
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}
RUN_DEPENDS-tcl=	${MODTCL_RUN_DEPENDS}

# --without-winradio    do not build winradio backend
# --with-gnuradio       build gnuradio backend

CONFIGURE_ARGS=--with-cxx-binding --with-perl-binding --with-rpc-backends \
	--with-tcl-binding --with-python-binding --without-rigmatrix \
	--with-tcl=${MODTCL_LIBDIR}

.include <bsd.port.mk>
