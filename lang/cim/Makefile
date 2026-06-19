COMMENT =	GNU Simula compiler
DISTNAME =	cim-5.1
REVISION =	2
CATEGORIES =	lang

SHARED_LIBS +=	cim                       0.0 # 3.0

HOMEPAGE =	https://www.gnu.org/software/cim/

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += c m

SITES =		${SITE_GNU:=cim/}

CONFIGURE_STYLE =	gnu

# It's really really not C99.
# SCFLAGS is what cim calls cc with.
MAKE_FLAGS =	CFLAGS="${CFLAGS} -std=gnu89 -Wno-incompatible-pointer-types" \
		SCFLAGS="${CFLAGS} -std=gnu89 -w -Wno-incompatible-pointer-types"

.include <bsd.port.mk>
