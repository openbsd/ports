# $OpenBSD: Makefile,v 1.5 2019/11/28 15:55:23 bket Exp $

COMMENT =	support library for FileZilla

DISTNAME =	libfilezilla-0.19.1

SHARED_LIBS +=  filezilla	1.0 # 2.0.0

CATEGORIES =	net

HOMEPAGE =	https://lib.filezilla-project.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ffi gmp gnutls hogweed iconv idn2
WANTLIB += intl m nettle p11-kit tasn1 unistring

MASTER_SITES =		https://download.filezilla-project.org/libfilezilla/
EXTRACT_SUFX =		.tar.bz2

COMPILER =		base-clang ports-gcc

# XXX regression tests depend on cppunit>=1.13.0
BUILD_DEPENDS =		devel/cppunit \
			devel/gettext,-tools
LIB_DEPENDS =		converters/libiconv \
			security/gnutls \
			security/libnettle

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	--disable-doxygen-doc
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

.include <bsd.port.mk>
