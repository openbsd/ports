# $OpenBSD: Makefile,v 1.4 2014/09/08 17:51:09 jca Exp $

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
		prefix="${PREFIX}" sysconfdir="${SYSCONFDIR}"

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mno_shared}
TEST_TARGET =		tests
.else
MAKE_FLAGS +=		INSTALLPROG="cdb-shared"
ALL_TARGET =		all shared
INSTALL_TARGET =	install install-sharedlib
TEST_TARGET =		tests-shared
.endif

post-install:
	rm -f "${PREFIX}/lib/libcdb.so"

.include <bsd.port.mk>
