# $OpenBSD: Makefile,v 1.7 2010/11/15 00:22:53 espie Exp $

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
RUN_DEPENDS =		devel/ruby-activesupport,${FLAVOR} \
			databases/ruby-couchrest,${FLAVOR} \
			databases/ruby-validatable,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
