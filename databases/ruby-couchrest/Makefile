# $OpenBSD: Makefile,v 1.6 2010/11/15 00:22:53 espie Exp $

COMMENT =	lean and RESTful interface to CouchDB

DISTNAME =	couchrest-0.33
REVISION =      1
CATEGORIES =	databases

HOMEPAGE =	http://github.com/jchris/couchrest/

# Apache 2.0
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		converters/ruby-json,${FLAVOR} \
			STEM->=1.0.3:www/ruby-rest-client,${FLAVOR} \
			mail/ruby-mime-types,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	devel/ruby-extlib,${FLAVOR} \
			databases/apache-couchdb
MODRUBY_REGRESS =	rake rspec

# needs a running couchdb server
REGRESS_IS_INTERACTIVE = Yes

.include <bsd.port.mk>
