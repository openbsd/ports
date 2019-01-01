# $OpenBSD: Makefile,v 1.13 2019/01/01 15:19:51 kn Exp $

COMMENT =	run arbitrary commands when files change

DISTNAME =	entr-4.1

CATEGORIES =	sysutils

HOMEPAGE =	http://entrproject.org/

MAINTAINER =	Eric Radman <ericshane@eradman.com>

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
