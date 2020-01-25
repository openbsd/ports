# $OpenBSD: Makefile,v 1.1.1.1 2020/01/25 16:44:51 schwarze Exp $

COMMENT =		convert scdoc text files to man(7) pages
VERSION =		1.10.0
DISTNAME =		scdoc-${VERSION}
CATEGORIES =		textproc
HOMEPAGE =		https://git.sr.ht/~sircmpwn/scdoc

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://git.sr.ht/~sircmpwn/scdoc/
DISTFILES =		scdoc-{archive/}${VERSION}${EXTRACT_SUFX}

WANTLIB =		c

USE_GMAKE =		Yes
MAKE_FLAGS =		CC="${CC}"
FAKE_FLAGS =		DESTDIR=${WRKINST}\
			PREFIX=${PREFIX}\
			MANDIR=${DESTDIR}${PREFIX}/man

TEST_TARGET =		check

# will attempt to run the unpatched tests if they are not rm'd
pre-test:
	rm ${WRKSRC}/test/*.orig

.include <bsd.port.mk>
