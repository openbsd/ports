COMMENT =		convert scdoc text files to man(7) pages
VERSION =		1.11.1
DISTNAME =		scdoc-${VERSION}
CATEGORIES =		textproc
HOMEPAGE =		https://git.sr.ht/~sircmpwn/scdoc

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://git.sr.ht/~sircmpwn/scdoc/
DISTFILES =		scdoc-{archive/}${VERSION}${EXTRACT_SUFX}

# uses pledge(2)
WANTLIB =		c

USE_GMAKE =		Yes
MAKE_FLAGS =		CC="${CC}"
FAKE_FLAGS =		DESTDIR=${WRKINST}\
			PREFIX=${PREFIX}\
			MANDIR=${DESTDIR}${PREFIX}/man

TEST_TARGET =		check

.include <bsd.port.mk>
