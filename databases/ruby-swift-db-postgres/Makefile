# $OpenBSD: Makefile,v 1.1.1.1 2013/05/25 22:18:46 jeremy Exp $

COMMENT =	postgresql driver for swift

DISTNAME =	swift-db-postgres-0.3.0
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
FLAVOR ?=	ruby19
FLAVORS =	ruby19 ruby20

WANTLIB =	e2fs-uuid pq
LIB_DEPENDS =	sysutils/e2fsprogs \
		databases/postgresql

CONFIGURE_STYLE = ruby gem ext

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ext/swift/db/postgres/extconf.rb

.include <bsd.port.mk>
