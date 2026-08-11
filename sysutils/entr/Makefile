COMMENT =	run arbitrary commands when files change

DISTNAME =	entr-5.8

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

# vim is needed for xxd
TEST_DEPENDS =	devel/git \
		vim-*|vim-classic-*:editors/vim

# Scripts are executed from there, move in case /tmp is mounted "noexec".
TEST_ENV =	TMPDIR=${WRKDIR}

TEST_TARGET =	test check

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
