# $OpenBSD: Makefile,v 1.7 2010/11/24 21:35:13 jeremy Exp $

COMMENT =	lean and RESTful interface to CouchDB

DISTNAME =	couchrest-0.33
REVISION =	2
CATEGORIES =	databases

HOMEPAGE =	http://github.com/jchris/couchrest/

# Apache 2.0
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		converters/ruby-json,${MODRUBY_FLAVOR} \
			www/ruby-rest-client,${MODRUBY_FLAVOR}>=1.0.3 \
			mail/ruby-mime-types,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	devel/ruby-extlib,${MODRUBY_FLAVOR} \
			databases/apache-couchdb
MODRUBY_REGRESS =	rake rspec

# needs a running couchdb server
REGRESS_IS_INTERACTIVE = Yes

.include <bsd.port.mk>
