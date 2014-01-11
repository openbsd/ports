# $OpenBSD: Makefile,v 1.3 2014/01/11 22:42:26 jeremy Exp $

COMMENT =	postgresql driver for swift

DISTNAME =	swift-db-postgres-0.3.0
REVISION =	1
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
FLAVORS =	ruby19 ruby20 ruby21

WANTLIB =	uuid pq
LIB_DEPENDS =	sysutils/e2fsprogs>=1.42.7 \
		databases/postgresql

CONFIGURE_STYLE = ruby gem ext

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ext/swift/db/postgres/extconf.rb

.include <bsd.port.mk>
