# $OpenBSD: Makefile,v 1.12 2011/09/07 16:10:49 jeremy Exp $

COMMENT =	Ruby binding for the bcrypt() password hashing algorithm

VERSION =	3.0.0
DISTNAME =	bcrypt-ruby-${VERSION}
PKGNAME =	bcrypt-${VERSION}
CATEGORIES =	security

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE =	http://bcrypt-ruby.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

.include <bsd.port.mk>
