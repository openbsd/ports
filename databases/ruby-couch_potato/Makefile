# $OpenBSD: Makefile,v 1.2 2009/08/09 08:36:46 bernd Exp $

COMMENT =	CouchDB persistence layer written in Ruby

VERSION =	0.2.8
DISTNAME =	langalex-couch_potato-${VERSION}
PKGNAME =	ruby-couch_potato-${VERSION}
CATEGORIES =	databases

HOMEPAGE =	http://github.com/langalex/couch_potato/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_GITHUB}

MODULES =		lang/ruby
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::devel/ruby-activesupport \
			::databases/ruby-couchrest \
			::databases/ruby-validatable

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

.include <bsd.port.mk>
