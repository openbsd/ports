# $OpenBSD: Makefile,v 1.15 2019/05/04 14:29:48 sthen Exp $

COMMENT =	run arbitrary commands when files change

DISTNAME =	entr-4.2

CATEGORIES =	sysutils

HOMEPAGE =	http://entrproject.org/

# ISC
PERMIT_PACKAGE_CDROM = Yes

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
