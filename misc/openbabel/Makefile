# $OpenBSD: Makefile,v 1.8 2010/01/03 22:56:42 jasper Exp $

COMMENT=	chemistry file translation program

V=		2.2.3
DISTNAME=	openbabel-${V}
CATEGORIES=	misc

SUBST_VARS=	V

SHARED_LIBS+=	openbabel	5.0	# .3.0

HOMEPAGE=	http://openbabel.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openbabel/}

WANTLIB=	c m stdc++ z

MODULES=	converters/libiconv

BUILD_DEPENDS=	::devel/boost
LIB_DEPENDS=	xml2.>=9::textproc/libxml
REGRESS_DEPENDS=::${BUILD_PKGPATH}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_DOXYGEN=""
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-inchi \
		--disable-wx-gui \
		--with-boost=${LOCALBASE}

.include <bsd.port.mk>
