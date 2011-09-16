# $OpenBSD: Makefile,v 1.10 2011/09/16 08:48:04 espie Exp $

COMMENT =	CouchDB persistence layer written in Ruby

DISTNAME =	couch_potato-0.2.12
REVISION =	4
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
