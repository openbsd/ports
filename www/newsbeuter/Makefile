# $OpenBSD: Makefile,v 1.14 2017/09/17 17:04:52 tj Exp $

COMMENT =		open-source RSS/Atom feed reader for text terminals
DISTNAME =		newsbeuter-2.9
CATEGORIES =		www
REVISION =		1

HOMEPAGE =		https://newsbeuter.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl iconv intl json-c m ncursesw pthread
WANTLIB += sqlite3 stfl xml2 ${COMPILER_LIBCXX}

MASTER_SITES =		https://newsbeuter.org/downloads/

COMPILER =		gcc

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
