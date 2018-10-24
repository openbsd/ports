# $OpenBSD: Makefile,v 1.16 2018/10/24 14:28:10 sthen Exp $

COMMENT =		software able to hide data in various kind of files

DISTNAME =		steghide-0.5.1
REVISION =		6
CATEGORIES =		security
HOMEPAGE =		http://steghide.sf.net/

MAINTAINER =		Giovanni Bechis <giovanni@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c iconv intl jpeg m mhash mcrypt ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=steghide/}

BUILD_DEPENDS =		devel/gettext-tools
LIB_DEPENDS =		devel/gettext \
			security/libmcrypt \
			security/mhash \
			graphics/jpeg
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.57
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
CXXFLAGS +=		-std=c++03
.endif

.include <bsd.port.mk>
