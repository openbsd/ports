# $OpenBSD: Makefile,v 1.2 2013/06/21 22:37:02 sthen Exp $

COMMENT =	postgresql driver for swift

DISTNAME =	swift-db-postgres-0.3.0
REVISION =	0
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
FLAVOR ?=	ruby19
FLAVORS =	ruby19 ruby20

WANTLIB =	uuid pq
LIB_DEPENDS =	sysutils/e2fsprogs>=1.42.7 \
		databases/postgresql

CONFIGURE_STYLE = ruby gem ext

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ext/swift/db/postgres/extconf.rb

.include <bsd.port.mk>
