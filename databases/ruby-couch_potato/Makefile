# $OpenBSD: Makefile,v 1.6 2010/11/08 23:28:53 jeremy Exp $

COMMENT =	CouchDB persistence layer written in Ruby

DISTNAME =	couch_potato-0.2.12
REVISION =      1
CATEGORIES =	databases

HOMEPAGE =	http://github.com/langalex/couch_potato/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:${MODRUBY_PKG_PREFIX}-activesupport-*:devel/ruby-activesupport,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-couchrest-*:databases/ruby-couchrest,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-validatable-*:databases/ruby-validatable,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
