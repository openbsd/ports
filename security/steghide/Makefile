# $OpenBSD: Makefile,v 1.20 2019/07/12 20:49:37 sthen Exp $

COMMENT =		software able to hide data in various kind of files

DISTNAME =		steghide-0.5.1
REVISION =		9
CATEGORIES =		security
HOMEPAGE =		http://steghide.sf.net/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c iconv intl jpeg m mhash mcrypt ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=steghide/}

BUILD_DEPENDS =		devel/gettext,-tools
LIB_DEPENDS =		devel/gettext,-runtime \
			security/libmcrypt \
			security/mhash \
			graphics/jpeg
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.57
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"

CXXFLAGS +=		-std=c++03

.include <bsd.port.mk>
