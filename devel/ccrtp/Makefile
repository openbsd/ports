# $OpenBSD: Makefile,v 1.21 2021/11/28 19:18:38 tb Exp $

COMMENT=	implementation of the Real-time Transport Protocol

DISTNAME=	ccrtp-1.7.1
REVISION =	8
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=ccrtp/}

SHARED_LIBS=	ccrtp1		2.0

HOMEPAGE=	http://www.gnutelephony.org/index.php/GNU_ccRTP

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += crypto ssl ccgnu2>=1 m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	devel/commoncpp

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURED_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_path_DOXYGEN=no \
		ac_cv_path_LIBGCRYPT_CONFIG=no

NO_TEST=	Yes

.include <bsd.port.mk>
