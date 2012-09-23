# $OpenBSD: Makefile,v 1.6 2012/09/23 16:57:32 jeremy Exp $

COMMENT =	relational algebra for ruby

DISTNAME =	arel-2.2.1
REVISION =	0
CATEGORIES =	databases

HOMEPAGE =	https://github.com/rails/arel

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

CONFIGURE_STYLE =	ruby gem

# Currently fails with a superclass mismatch exception
MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
