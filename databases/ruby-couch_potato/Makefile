# $OpenBSD: Makefile,v 1.3 2009/10/25 13:22:06 msf Exp $

COMMENT =	CouchDB persistence layer written in Ruby

VERSION =	0.2.12
DISTNAME =	couch_potato-${VERSION}
PKGNAME =	ruby-couch_potato-${VERSION}
CATEGORIES =	databases

HOMEPAGE =	http://github.com/langalex/couch_potato/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_GEMCUTTER}

MODULES =		lang/ruby
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::devel/ruby-activesupport \
			::databases/ruby-couchrest \
			::databases/ruby-validatable

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

.include <bsd.port.mk>
