# $OpenBSD: Makefile,v 1.22 2009/10/12 14:10:06 pirofti Exp $

COMMENT =	object relation model implementation for ruby

DISTNAME =	activerecord-2.3.4
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	databases

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=activerecord/}

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
