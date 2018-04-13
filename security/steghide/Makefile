# $OpenBSD: Makefile,v 1.15 2018/04/13 11:13:31 jca Exp $

COMMENT =		software able to hide data in various kind of files

DISTNAME =		steghide-0.5.1
REVISION =		5
CATEGORIES =		security
HOMEPAGE =		http://steghide.sf.net/

MAINTAINER =		Giovanni Bechis <giovanni@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=steghide/}

BUILD_DEPENDS =		devel/gettext-tools
LIB_DEPENDS =		devel/gettext \
			security/libmcrypt \
			security/mhash \
			graphics/jpeg
WANTLIB =		c iconv intl jpeg m mhash mcrypt ${COMPILER_LIBCXX} z
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.57
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
CXXFLAGS +=		-std=c++03
.endif

.include <bsd.port.mk>
