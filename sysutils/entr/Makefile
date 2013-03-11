# $OpenBSD: Makefile,v 1.3 2013/03/11 11:41:30 espie Exp $

COMMENT = run arbitrary commands when files change

DISTNAME = entr-1.4
REV = b90825a157a4

CATEGORIES = sysutils

HOMEPAGE = https://bitbucket.org/eradman/entr/

MAINTAINER = Eric Radman <ericshane@eradman.com>

# ISC
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += c pthread

MASTER_SITES = http://static.eradman.com/code/ \
	https://bitbucket.org/eradman/entr/get/

MAKE_FLAGS = CC="${CC}" LDFLAGS="${LDFLAGS} -pthread"
WRKDIST = ${WRKDIR}/eradman-entr-${REV}

TEST_TARGET = test

.include <bsd.port.mk>
