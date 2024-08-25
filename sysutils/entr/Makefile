COMMENT =	run arbitrary commands when files change

DISTNAME =	entr-5.6

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

# Scripts are executed from there, default /tmp may be mounted "noexec".
# tmux(1) requires a shell to start, _pbuild's nologin(8) won't work.
TEST_ENV =	TMPDIR=${WRKDIR} \
		SHELL=/bin/sh

TEST_TARGET =	test check

PORTHOME =	${WRKDIR}

.include <bsd.port.mk>
