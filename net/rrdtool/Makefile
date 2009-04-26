# $OpenBSD: Makefile,v 1.46 2009/04/26 11:01:04 ajacoutot Exp $

SHARED_ONLY=	Yes 

COMMENT-main=	system to store and display time-series data
COMMENT-perl=	perl interface to librrd
COMMENT-python= python interface to librrd

VERSION=	1.2.30
DISTNAME=	rrdtool-${VERSION}
PKGNAME-main=	rrdtool-${VERSION}
PKGNAME-perl=	p5-RRD-${VERSION}
PKGNAME-python= py-rrd-${VERSION}p0

SHARED_LIBS+=	rrd 3.0
SHARED_LIBS+=	rrd_th 3.0

CATEGORIES=	net

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>
HOMEPAGE=	http://oss.oetiker.ch/rrdtool/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=	${HOMEPAGE}pub/

USE_GMAKE=	Yes
USE_X11=	Yes
USE_LIBTOOL=	Yes

MULTI_PACKAGES=	-main -perl -python

MODULES=	lang/python

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--enable-perl-site-install \
		--enable-python \
		--disable-ruby \
		--disable-tcl
CPPFLAGS+=	-I${LOCALBASE}/include/libart-2.0 \
		-I${LOCALBASE}/include/libpng \
		-I${X11BASE}/include/ \
		-I${X11BASE}/include/freetype2
LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib
CONFIGURE_ENV+=	CPPFLAGS="${CPPFLAGS}" LDFLAGS="${LDFLAGS}"

WANTLIB-main=		c m z freetype
LIB_DEPENDS-main=	png::graphics/png \
			art_lgpl_2::graphics/libart
RUN_DEPENDS-main=	

WANTLIB-perl=		m z
LIB_DEPENDS-perl=	rrd:rrdtool-${VERSION}:net/rrdtool
RUN_DEPENDS-perl=	

LIB_DEPENDS-python=	rrd:rrdtool-${VERSION}:net/rrdtool
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}
MODPY_EGG_VERSION=	0.2.1

.include <bsd.port.mk>
