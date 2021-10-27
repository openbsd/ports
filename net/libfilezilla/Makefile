# $OpenBSD: Makefile,v 1.23 2021/10/27 07:24:42 bket Exp $

COMMENT =	support library for FileZilla

DISTNAME =	libfilezilla-0.34.2

SHARED_LIBS +=  filezilla	10.0 # 21.1.0

CATEGORIES =	net

HOMEPAGE =	https://lib.filezilla-project.org/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} gmp gnutls hogweed iconv idn2 intl
WANTLIB += m nettle p11-kit tasn1 unistring

MASTER_SITES =		https://download.filezilla-project.org/libfilezilla/
EXTRACT_SUFX =		.tar.bz2

# c++17
COMPILER =		base-clang ports-gcc

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

# undefined reference to `__atomic_store_8'
.if ${MACHINE_ARCH:Mhppa}
WANTLIB += atomic
LDFLAGS += -latomic
.endif

.include <bsd.port.mk>
