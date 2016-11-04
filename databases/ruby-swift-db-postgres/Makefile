# $OpenBSD: Makefile,v 1.7 2016/11/04 21:26:37 jeremy Exp $

COMMENT =	postgresql driver for swift

DISTNAME =	swift-db-postgres-0.3.1
REVISION =	0
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB =	uuid pq
LIB_DEPENDS =	sysutils/e2fsprogs>=1.42.7 \
		databases/postgresql

CONFIGURE_STYLE = ruby gem ext

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ext/swift/db/postgres/extconf.rb

.include <bsd.port.mk>
