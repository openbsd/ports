COMMENT =	run arbitrary commands when files change

DISTNAME =	entr-5.5

CATEGORIES =	sysutils

HOMEPAGE =	https://eradman.com/entrproject/

# ISC
PERMIT_PACKAGE = Yes

# uses pledge()
WANTLIB += c

SITES =		${HOMEPAGE}code/

MAKE_FILE =	Makefile.bsd
MAKE_FLAGS =	CC="${CC}" \
		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS =	DESTDIR=""

TEST_DEPENDS =	devel/git \
		editors/vim

PORTHOME =	${WRKDIR}

TEST_TARGET =	test check

.include <bsd.port.mk>
