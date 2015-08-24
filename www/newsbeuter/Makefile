# $OpenBSD: Makefile,v 1.4 2015/08/24 11:31:07 jasper Exp $

BROKEN-hppa =		undefined reference to `__sync_val_compare_and_swap_4' in libjson-c
BROKEN-mips64 =		undefined reference to `__sync_val_compare_and_swap_4' in libjson-c

COMMENT =		open-source RSS/Atom feed reader for text terminals
DISTNAME =		newsbeuter-2.7
CATEGORIES =		www

HOMEPAGE =		http://newsbeuter.org/

MAINTAINER =		Kyle Isom <kyle@tyrfingr.is>

# mit
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto curl json-c m ncursesw pthread sqlite3
WANTLIB += stdc++ stfl xml2

MASTER_SITES =		http://newsbeuter.org/downloads/

MODULES =		devel/gettext

LIB_DEPENDS =		devel/stfl \
			devel/json-c \
			textproc/libxml	\
			net/curl

MAKE_FLAGS =		CXX="${CXX}"
FAKE_FLAGS =		mandir=${PREFIX}/man

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	config.sh

post-extract:
	rm $(WRKSRC)/src/google*.cpp

.include <bsd.port.mk>
