# $OpenBSD: Makefile,v 1.2 2012/05/25 12:46:40 jasper Exp $

COMMENT = run arbitrary commands when files change

DISTNAME = entr-1.4
REV = b90825a157a4

CATEGORIES = sysutils

HOMEPAGE = https://bitbucket.org/eradman/entr/

MAINTAINER = Eric Radman <ericshane@eradman.com>

# ISC
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

WANTLIB += c pthread

MASTER_SITES = http://static.eradman.com/code/ \
	https://bitbucket.org/eradman/entr/get/

MAKE_FLAGS = CC="${CC}" LDFLAGS="${LDFLAGS} -pthread"
WRKDIST = ${WRKDIR}/eradman-entr-${REV}

REGRESS_TARGET = test

.include <bsd.port.mk>
