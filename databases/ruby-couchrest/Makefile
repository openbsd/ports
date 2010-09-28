# $OpenBSD: Makefile,v 1.4 2010/09/28 20:12:16 jeremy Exp $

COMMENT =	lean and RESTful interface to CouchDB

DISTNAME =	couchrest-0.33
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
CATEGORIES =	databases

HOMEPAGE =	http://github.com/jchris/couchrest/

# Apache 2.0
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::converters/ruby-json \
			:ruby-rest-client->=1.0.3:www/ruby-rest-client \
			::mail/ruby-mime-types

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

REGRESS_DEPENDS =	::devel/ruby-extlib \
			::databases/apache-couchdb
MODRUBY_REGRESS =	rake rspec

# needs a running couchdb server
REGRESS_IS_INTERACTIVE = Yes

.include <bsd.port.mk>
