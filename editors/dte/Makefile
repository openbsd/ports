COMMENT =	small and easy to use console text editor
DISTNAME =	dte-1.10
CATEGORIES =	editors

HOMEPAGE =	https://craigbarnes.gitlab.io/dte/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += c iconv

MASTER_SITES =	https://craigbarnes.gitlab.io/dist/dte/

COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

LIB_DEPENDS =	converters/libiconv

USE_GMAKE =	Yes
MAKE_FILE =	GNUmakefile
MAKE_FLAGS =	V=1 prefix="${PREFIX}" mandir="${PREFIX}/man"

.include <bsd.port.mk>
