# $OpenBSD: Makefile,v 1.1.1.1 2012/05/18 20:59:13 sthen Exp $

COMMENT =	creating and reading constant databases

V =		0.77
DISTNAME =	tinycdb_$V
PKGNAME =	tinycdb-$V
CATEGORIES =	databases
SHARED_LIBS =	cdb	0.0

HOMEPAGE =	http://www.corpit.ru/mjt/tinycdb.html
MASTER_SITES =	http://www.corpit.ru/mjt/tinycdb/

MAINTAINER =	Christian Rueger <cr+openbsd@rueger-net.de>

# Public domain
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	c

WRKDIST =	${WRKDIR}/tinycdb-$V
MAKE_FLAGS +=	sysconfdir="${SYSCONFDIR}" LIBcdb_VERSION="${LIBcdb_VERSION}"
FAKE_FLAGS +=	${MAKE_FLAGS} prefix="${PREFIX}"

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mno_shared}
REGRESS_TARGET =	tests
.else
MAKE_FLAGS +=		INSTALLPROG="cdb-shared"
ALL_TARGET =		all shared
INSTALL_TARGET =	install install-sharedlib
REGRESS_TARGET =	tests-shared
.endif

.include <bsd.port.mk>
