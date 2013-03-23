# $OpenBSD: Makefile,v 1.12 2013/03/23 15:19:08 ajacoutot Exp $

COMMENT=	GObject wrapper around exiv2

V=		0.6.1
DISTNAME=	libgexiv2_${V}
EXTRACT_SUFX=	.tar.xz
PKGNAME=	libgexiv2-${V}
WRKDIST=	${WRKDIR}/${DISTNAME:S/_/-/}

CATEGORIES=	graphics

SHARED_LIBS +=  gexiv2               2.0      # 2.0

HOMEPAGE=	http://redmine.yorba.org/projects/gexiv2/wiki

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += exiv2 expat ffi glib-2.0 gobject-2.0 gthread-2.0 m
WANTLIB += pcre pthread stdc++ z

MASTER_SITES=	http://yorba.org/download/gexiv2/${V:C/^([0-9]+\.[0-9]+).*/\1/}/

MODULES=	devel/gettext

BUILD_DEPENDS=	devel/gobject-introspection

LIB_DEPENDS=	graphics/exiv2 \
		devel/glib2

USE_GMAKE=	Yes

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix='${PREFIX}' \
		--enable-introspection \
		--with-libtool=${LIBTOOL} \
		CXX='${CXX}' \
		INSTALL_PROGRAM='${INSTALL_PROGRAM}' \
		INSTALL_DATA='${INSTALL_DATA}'

.include <bsd.port.mk>

# LONG_BIT
.for _m in ${MACHINE_ARCH}
. if !empty(LP64_ARCHS:M${_m})
CXXFLAGS +=	-DWORD_SIZE=64
. else
CXXFLAGS +=	-DWORD_SIZE=32
. endif
.endfor
