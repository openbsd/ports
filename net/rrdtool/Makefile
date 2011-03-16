# $OpenBSD: Makefile,v 1.61 2011/03/16 12:58:42 sthen Exp $

SHARED_ONLY=	Yes 

COMMENT-main=	system to store and display time-series data
COMMENT-perl=	perl interface to librrd
COMMENT-python=	python interface to librrd
COMMENT-ruby=	ruby interface to librrd

VERSION=	1.2.30
DISTNAME=	rrdtool-${VERSION}
PKGNAME-main=	rrdtool-${VERSION}
PKGNAME-perl=	p5-RRD-${VERSION}
PKGNAME-python= py-rrd-${VERSION}
PKGNAME-ruby=	ruby-rrd-${VERSION}
REVISION-main=	2
REVISION-perl=	0
REVISION-python=2
REVISION-ruby=	6

SHARED_LIBS+=	rrd 3.0
SHARED_LIBS+=	rrd_th 3.0

CATEGORIES=	net databases

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>
HOMEPAGE=	http://oss.oetiker.ch/rrdtool/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=	${HOMEPAGE}pub/

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes

MULTI_PACKAGES=	-main -perl -python -ruby

MODULES=	lang/python lang/ruby

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--enable-perl-site-install \
		--enable-python \
		--enable-ruby-site-install \
		--disable-tcl
CPPFLAGS+=	-I${LOCALBASE}/include/libart-2.0 \
		-I${LOCALBASE}/include/libpng \
		-I${X11BASE}/include/ \
		-I${X11BASE}/include/freetype2
LDFLAGS+=	-L${LOCALBASE}/lib -L${X11BASE}/lib
CONFIGURE_ENV+=	CPPFLAGS="${CPPFLAGS}" \
		LDFLAGS="${LDFLAGS}" \
		RUBY="${RUBY}"

WANTLIB-main=		c m z freetype png art_lgpl_2
LIB_DEPENDS-main=	graphics/png \
			graphics/libart
RUN_DEPENDS-main=	

WANTLIB-perl=		m z rrd
LIB_DEPENDS-perl=	rrdtool-${VERSION}:net/rrdtool
RUN_DEPENDS-perl=	

WANTLIB-python =	rrd
LIB_DEPENDS-python=	rrdtool-${VERSION}:net/rrdtool
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}
MODPY_EGG_VERSION=	0.2.1

LIB_DEPENDS-ruby=	rrdtool-${VERSION}:net/rrdtool \
			${MODRUBY_LIB_DEPENDS}
WANTLIB-ruby=		c m rrd ${MODRUBY_WANTLIB}

.include <bsd.port.mk>
