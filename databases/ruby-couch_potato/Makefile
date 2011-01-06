# $OpenBSD: Makefile,v 1.9 2011/01/06 04:24:22 jeremy Exp $

COMMENT =	CouchDB persistence layer written in Ruby

DISTNAME =	couch_potato-0.2.12
REVISION =	3
CATEGORIES =	databases

HOMEPAGE =	http://github.com/langalex/couch_potato/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-activesupport,${MODRUBY_FLAVOR} \
			databases/ruby-couchrest,${MODRUBY_FLAVOR} \
			databases/ruby-validatable,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
