# $OpenBSD: Makefile,v 1.2 2007/05/28 20:32:34 jason Exp $

COMMENT-main=	"radio/rotator control library"
COMMENT-python=	"python bindings for hamlib"
COMMENT-tcl=	"tcl bindings for hamlib"

VERSION=	1.2.6
DISTNAME=	hamlib-${VERSION}
PKGNAME-main=	hamlib-${VERSION}p0
PKGNAME-python=	hamlib-python-${VERSION}p0
PKGNAME-tcl=	hamlib-tcl-${VERSION}p0
CATEGORIES=    	comms hamradio

MULTI_PACKAGES=	-main -python -tcl

SHARED_LIBS=	hamlib 2.5 \
		hamlib++ 2.5

HOMEPAGE=	http://hamlib.sourceforge.net/

MAINTAINER=	Jason Wright <jason@openbsd.org>

MODULES=	lang/python

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m stdc++ z
WANTLIB-python=		m usb
WANTLIB-tcl=		m usb

LIB_DEPENDS-main=	xml2::textproc/libxml \
			iconv::converters/libiconv \
			usb.>=9::devel/libusb
LIB_DEPENDS-python=	hamlib::${BUILD_PKGPATH} \
			python${MODPY_VERSION}:python-${PYTHON_VER}*:lang/python/${MODPY_VERSION}
LIB_DEPENDS-tcl=	hamlib::${BUILD_PKGPATH} \
			tcl84::lang/tcl/8.4

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=hamlib/}

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

BUILD_DEPENDS=		::devel/swig

RUN_DEPENDS-main=
RUN_DEPENDS-tcl=

# --without-winradio    do not build winradio backend
# --with-gnuradio       build gnuradio backend

CONFIGURE_ARGS=--with-cxx-binding --with-perl-binding --with-rpc-backends \
	--with-tcl-binding --with-python-binding --without-rigmatrix \
	--with-tcl=${LOCALBASE}/lib/tcl8.4

.include <bsd.port.mk>
