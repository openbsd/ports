# $OpenBSD: Makefile,v 1.24 2022/01/06 13:31:05 sthen Exp $

COMMENT =	run arbitrary commands when files change

DISTNAME =	entr-5.1

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
