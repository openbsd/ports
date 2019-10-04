# $OpenBSD: Makefile,v 1.18 2019/10/04 20:50:36 sthen Exp $

COMMENT =	run arbitrary commands when files change

DISTNAME =	entr-4.3

CATEGORIES =	sysutils

HOMEPAGE =	http://entrproject.org/

# ISC
PERMIT_PACKAGE = Yes

WANTLIB += c

MASTER_SITES =	http://entrproject.org/code/

MAKE_FILE =	Makefile.bsd
MAKE_FLAGS =	CC="${CC}" \
		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS =	DESTDIR=""

TEST_DEPENDS =	devel/git \
		editors/vim

post-test:
	cd ${WRKSRC}; HOME=${WRKDIR} ./system_test.sh

.include <bsd.port.mk>
