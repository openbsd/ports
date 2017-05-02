# $OpenBSD: Makefile,v 1.10 2017/05/02 12:02:49 tsg Exp $

COMMENT =	run arbitrary commands when files change

DISTNAME =	entr-3.7
REV =		c5b62bde107d

CATEGORIES =	sysutils

HOMEPAGE =	http://entrproject.org/

MAINTAINER =	Eric Radman <ericshane@eradman.com>

# ISC
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += c

MASTER_SITES =	http://entrproject.org/code/ \
		https://bitbucket.org/eradman/entr/get/

MAKE_FILE =	Makefile.bsd
MAKE_FLAGS =	CC="${CC}" LDFLAGS="${LDFLAGS}"
WRKDIST =	${WRKDIR}/eradman-entr-${REV}
FAKE_FLAGS =	DESTDIR=""

TEST_TARGET =	test

.include <bsd.port.mk>
