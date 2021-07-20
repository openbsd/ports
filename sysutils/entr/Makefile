# $OpenBSD: Makefile,v 1.23 2021/07/20 13:40:32 fcambus Exp $

COMMENT =	run arbitrary commands when files change

DISTNAME =	entr-5.0

CATEGORIES =	sysutils

HOMEPAGE =	https://eradman.com/entrproject/

# ISC
PERMIT_PACKAGE = Yes

WANTLIB += c

MASTER_SITES =	${HOMEPAGE}code/

MAKE_FILE =	Makefile.bsd
MAKE_FLAGS =	CC="${CC}" \
		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS =	DESTDIR=""

TEST_DEPENDS =	devel/git \
		editors/vim

post-test:
	cd ${WRKSRC}; HOME=${WRKDIR} ./system_test.sh

.include <bsd.port.mk>
