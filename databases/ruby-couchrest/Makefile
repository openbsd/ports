# $OpenBSD: Makefile,v 1.12 2013/08/07 21:57:43 naddy Exp $

COMMENT =	lean and RESTful interface to CouchDB

DISTNAME =	couchrest-0.33
REVISION =	6
CATEGORIES =	databases

HOMEPAGE =	https://github.com/jchris/couchrest/

# Apache 2.0
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		converters/ruby-json,${MODRUBY_FLAVOR} \
			www/ruby-rest-client,${MODRUBY_FLAVOR}>=1.0.3 \
			mail/ruby-mime-types,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

TEST_DEPENDS =	devel/ruby-extlib,${MODRUBY_FLAVOR} \
			databases/apache-couchdb
MODRUBY_TEST =	rake rspec

# needs a running couchdb server
TEST_IS_INTERACTIVE = Yes

.include <bsd.port.mk>
