# $OpenBSD: Makefile,v 1.4 2019/07/12 20:48:30 sthen Exp $

COMMENT =	support library for FileZilla

DISTNAME =	libfilezilla-0.15.1

SHARED_LIBS +=  filezilla                 0.0 # 0.0

CATEGORIES =	net

HOMEPAGE =	https://lib.filezilla-project.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} gmp hogweed iconv m nettle

MASTER_SITES =		https://download.filezilla-project.org/libfilezilla/
EXTRACT_SUFX =		.tar.bz2

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/cppunit
LIB_DEPENDS =		converters/libiconv \
			security/libnettle

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-doxygen-doc
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

.include <bsd.port.mk>
