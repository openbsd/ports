# $OpenBSD: Makefile,v 1.3 2011/01/06 04:24:22 jeremy Exp $

COMMENT =	relational algebra for ruby

DISTNAME =	arel-2.0.4
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
