# $OpenBSD: Makefile,v 1.14 2019/05/03 16:59:10 danj Exp $

COMMENT =	run arbitrary commands when files change

DISTNAME =	entr-4.1
REVISION =	0

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
WRKDIST =	${WRKDIR}/eradman-entr-*
FAKE_FLAGS =	DESTDIR=""

.include <bsd.port.mk>
