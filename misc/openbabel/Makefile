# $OpenBSD: Makefile,v 1.27 2019/06/25 11:54:02 cwen Exp $

COMMENT=	chemistry file translation program

V=		2.2.3
DISTNAME=	openbabel-${V}
REVISION=	8
CATEGORIES=	misc

SUBST_VARS=	V

SHARED_LIBS+=	openbabel	5.0	# .3.0

HOMEPAGE=	http://openbabel.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv lzma m pthread ${COMPILER_LIBCXX} xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openbabel/}

BUILD_DEPENDS=	devel/boost
LIB_DEPENDS=	converters/libiconv \
		textproc/libxml
TEST_DEPENDS=${BUILD_PKGPATH}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_DOXYGEN=""
CONFIGURE_ARGS=	--disable-inchi \
		--disable-wx-gui \
		--with-boost=${LOCALBASE}

.include <bsd.port.mk>
