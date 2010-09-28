# $OpenBSD: Makefile,v 1.24 2010/09/28 20:12:16 jeremy Exp $

COMMENT =	object relation model implementation for ruby

DISTNAME =	activerecord-2.3.4
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
CATEGORIES =	databases

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS = 	:ruby-activesupport->=2.3.4:devel/ruby-activesupport

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =	*

MODRUBY_REGRESS =	rake
REGRESS_DEPENDS =	:ruby-mysql-*:databases/ruby-mysql \
			:ruby-sqlite3-*:databases/ruby-sqlite3 \
			:ruby-pg-*:databases/ruby-pg

.include <bsd.port.mk>
