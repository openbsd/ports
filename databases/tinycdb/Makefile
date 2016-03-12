# $OpenBSD: Makefile,v 1.5 2016/03/12 22:25:48 naddy Exp $

COMMENT =	creating and reading constant databases

DISTNAME =	tinycdb-0.78
CATEGORIES =	databases
SHARED_LIBS =	cdb	0.0

HOMEPAGE =	http://www.corpit.ru/mjt/tinycdb.html
MASTER_SITES =	http://www.corpit.ru/mjt/tinycdb/

MAINTAINER =	Christian Rueger <cr+openbsd@rueger-net.de>

# Public domain
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =	c

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}" \
		SHAREDLIB="libcdb.so.${LIBcdb_VERSION}" \
		prefix="${PREFIX}" sysconfdir="${SYSCONFDIR}" \
		INSTALLPROG="cdb-shared"

ALL_TARGET =		all shared
INSTALL_TARGET =	install install-sharedlib
TEST_TARGET =		tests-shared

post-install:
	rm -f "${PREFIX}/lib/libcdb.so"

.include <bsd.port.mk>
