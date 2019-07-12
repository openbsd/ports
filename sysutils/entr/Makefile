# $OpenBSD: Makefile,v 1.16 2019/07/12 21:02:26 sthen Exp $

COMMENT =	run arbitrary commands when files change

DISTNAME =	entr-4.2

CATEGORIES =	sysutils

HOMEPAGE =	http://entrproject.org/

# ISC
PERMIT_PACKAGE = Yes

WANTLIB += c

MASTER_SITES =	http://entrproject.org/code/ \
		https://bitbucket.org/eradman/entr/get/

MAKE_FILE =	Makefile.bsd
MAKE_FLAGS =	CC="${CC}" \
		LDFLAGS="${LDFLAGS}"
WRKDIST =	${WRKDIR}/eradman-entr
FAKE_FLAGS =	DESTDIR=""

post-extract:
	mv ${WRKDIR}/eradman-entr-* ${WRKDIST}

.include <bsd.port.mk>
