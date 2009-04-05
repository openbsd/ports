# $OpenBSD: Makefile,v 1.1.1.1 2009/04/05 11:00:36 bernd Exp $

COMMENT =	lean and RESTful interface to CouchDB

DISTNAME =	couchrest-0.23
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	databases

HOMEPAGE =	http://github.com/jchris/couchrest/

# Apache 2.0
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=couchapp/}

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::converters/ruby-json \
			::www/ruby-rest-client \
			::mail/ruby-mime-types

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

REGRESS_DEPENDS =	::devel/ruby-rake \
			::devel/ruby-rspec \
			::devel/ruby-extlib \
			::databases/apache-couchdb

# needs a running couchdb server
REGRESS_IS_INTERACTIVE = Yes

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake spec

.include <bsd.port.mk>
