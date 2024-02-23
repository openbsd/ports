# Depends on devel/libfirm
ONLY_FOR_ARCHS =	amd64 arm i386

# Must keep version number in sync with devel/libfirm
COMMENT =	C99 parser and frontend for libFirm
DISTNAME =	${GH_PROJECT}-1.22.1pl3
CATEGORIES =	lang

# Upstream expects you to use tags.
GH_ACCOUNT =	libfirm
GH_PROJECT =	cparser
GH_COMMIT =	51b173e673d80bc219ec898f5255d0cb9304ce80

HOMEPAGE =	https://pp.ipd.kit.edu/firm/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c firm

LIB_DEPENDS =	devel/libfirm

USE_GMAKE =	Yes
MAKE_FLAGS =	FIRM_LIBS="-L${LOCALBASE}/lib -lfirm" \
		REVISION="${GH_COMMIT}" V=1 variant=optimize

FAKE_FLAGS =	DESTDIR= MANDIR="${DESTDIR}${PREFIX}/man"

NO_TEST =	Yes

.include <bsd.port.mk>
