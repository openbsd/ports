# $OpenBSD: Makefile,v 1.16 2014/11/04 16:06:31 dcoppa Exp $

COMMENT=	chemistry file translation program

V=		2.2.3
DISTNAME=	openbabel-${V}
REVISION=	2
CATEGORIES=	misc

SUBST_VARS=	V

SHARED_LIBS+=	openbabel	5.0	# .3.0

HOMEPAGE=	http://openbabel.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openbabel/}

WANTLIB=	c m stdc++ xml2 z

MODULES=	converters/libiconv

BUILD_DEPENDS=	devel/boost
LIB_DEPENDS=	textproc/libxml
TEST_DEPENDS=${BUILD_PKGPATH}

USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_DOXYGEN=""
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-inchi \
		--disable-wx-gui \
		--with-boost=${LOCALBASE}

.include <bsd.port.mk>
