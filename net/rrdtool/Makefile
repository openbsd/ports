# $OpenBSD: Makefile,v 1.39 2007/09/28 12:07:54 steven Exp $

SHARED_ONLY=	Yes 

COMMENT-main=	system to store and display time-series data
COMMENT-perl=	perl interface to librrd
COMMENT-python= python interface to librrd

VERSION=	1.2.23
DISTNAME=	rrdtool-${VERSION}
PKGNAME-main=	${DISTNAME}
PKGNAME-perl=	p5-RRD-${VERSION}
PKGNAME-python= py-rrd-${VERSION}

SHARED_LIBS+=	rrd 2.10
SHARED_LIBS+=	rrd_th 2.8

CATEGORIES=	net

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>
HOMEPAGE=	http://oss.oetiker.ch/rrdtool/

# GPL
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
CONFIGURE_ENV+=	CPPFLAGS="${CPPFLAGS}" LDFLAGS="${LDFLAGS}" \
		PYTHON=${MODPY_BIN}

WANTLIB-main=		c m z freetype
LIB_DEPENDS-main=	png::graphics/png \
			art_lgpl_2::graphics/libart
RUN_DEPENDS-main=	

WANTLIB-perl=		m
LIB_DEPENDS-perl=	rrd::net/rrdtool
RUN_DEPENDS-perl=	

LIB_DEPENDS-python=	rrd::net/rrdtool
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}

.include <bsd.port.mk>
