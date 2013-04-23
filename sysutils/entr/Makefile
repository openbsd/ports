# $OpenBSD: Makefile,v 1.5 2013/04/23 23:04:45 jturner Exp $

COMMENT = run arbitrary commands when files change

DISTNAME = entr-1.9
REV = 587c18272485

CATEGORIES = sysutils

HOMEPAGE = http://entrproject.org/

MAINTAINER = Eric Radman <ericshane@eradman.com>

# ISC
PERMIT_PACKAGE_CDROM = Yes

WANTLIB += c

MASTER_SITES = http://entrproject.org/code/ \
	https://bitbucket.org/eradman/entr/get/

MAKE_FILE = Makefile.bsd
MAKE_FLAGS = CC="${CC}" LDFLAGS="${LDFLAGS}"
WRKDIST = ${WRKDIR}/eradman-entr-${REV}

TEST_TARGET = test

.include <bsd.port.mk>
