# $OpenBSD: Makefile,v 1.23 2020/08/15 20:31:10 rsadowski Exp $

# XXX check if still needed at next update
CXXFLAGS +=		-std=c++11

COMMENT =		media download tool

DISTNAME =		cclive-0.9.3
EXTRACT_SUFX =		.tar.xz
REVISION = 		7

CATEGORIES =		www

HOMEPAGE =		http://cclive.sourceforge.net

# AGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += boost_date_time-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_program_options-mt boost_system-mt bz2 c crypto curl
WANTLIB += ffi gcrypt glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error lua5.1 iconv intl m nghttp2 pcre pcrecpp proxy pthread
WANTLIB += quvi-0.9 sigc-2.0 ssl ${LIBCXX} z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cclive/}

# XXX should use lua module

# c++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/boost \
			devel/glib2mm \
			devel/pcre \
			net/quvi/libquvi>=0.9.3

RUN_DEPENDS =		net/luasocket

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
