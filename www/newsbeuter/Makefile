# $OpenBSD: Makefile,v 1.9 2017/05/27 05:07:48 espie Exp $

COMMENT =		open-source RSS/Atom feed reader for text terminals
DISTNAME =		newsbeuter-2.9
CATEGORIES =		www

HOMEPAGE =		http://newsbeuter.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl iconv intl json-c m ncursesw pthread
WANTLIB += sqlite3 stfl xml2 ${LIBECXX}

MASTER_SITES =		http://newsbeuter.org/downloads/

WANT_CXX =		base gcc


BUILD_DEPENDS =		devel/gettext-tools

LIB_DEPENDS =		databases/sqlite3 \
			devel/gettext \
			devel/stfl \
			devel/json-c \
			textproc/libxml	\
			net/curl

MAKE_FLAGS =		CXX="${CXX}"
FAKE_FLAGS =		mandir=${PREFIX}/man

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	config.sh

.include <bsd.port.mk>
