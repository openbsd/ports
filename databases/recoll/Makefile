# $OpenBSD: Makefile,v 1.5 2021/01/09 21:32:47 kmos Exp $

COMMENT= 	full text search application

V=		1.27.12
DISTNAME= 	recoll-${V}
REVISION=	1

SHARED_LIBS +=	recoll-${V}            0.0 # 0.0
SHARED_LIBS +=  recoll                 0.0 # 0.0

CATEGORIES= 	databases sysutils

HOMEPAGE= 	https://www.lesbonscomptes.com/recoll/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://www.lesbonscomptes.com/recoll/

# C++11
COMPILER=	base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} c iconv lzma m xapian xml2
WANTLIB += xslt z

MODULES=		lang/python

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

USE_GMAKE=		Yes

BUILD_DEPENDS=		devel/py-setuptools${MODPY_FLAVOR} \
			textproc/aspell/core

LIB_DEPENDS= 		databases/xapian-core \
			textproc/libxslt

CONFIGURE_STYLE= 	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \

CONFIGURE_ARGS=		--disable-python-chm \
			--disable-qtgui \
			--disable-userdoc \
			--disable-x11mon \
			--without-inotify \
			--without-fam \
			--without-qzeitgeist

pre-configure:
	sed -i -e "s,!!LIBrecoll_VERSION_R!!,${LIBrecoll_VERSION:R}," \
		-e "s,!!LIBrecoll_VERSION_E!!,${LIBrecoll_VERSION:E}," \
		${WRKSRC}/Makefile.in
	${SUBST_CMD} ${WRKSRC}/Makefile.in

.include <bsd.port.mk>
