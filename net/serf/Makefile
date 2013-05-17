# $OpenBSD: Makefile,v 1.1.1.1 2013/05/17 12:48:56 stsp Exp $

COMMENT =		high performance HTTP client library
DISTNAME =		serf-1.2.0
SHARED_LIBS = 		serf-1                    0.0 # 0.0
CATEGORIES =		net
HOMEPAGE =		http://code.google.com/p/serf/
MAINTAINER =		Stefan Sperling <stsp@openbsd.org>

# APLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = 		apr-1 aprutil-1 crypto db expat pthread ssl z
MASTER_SITES =		http://serf.googlecode.com/files/
EXTRACT_SUFX =		.tar.bz2

MODULES = 		converters/libiconv
LIB_DEPENDS =		devel/apr-util
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-apr=${LOCALBASE}/bin/apr-1-config \
			--with-apr-util=${LOCALBASE}/bin/apu-1-config
TEST_TARGET =		check

.include <bsd.port.mk>
