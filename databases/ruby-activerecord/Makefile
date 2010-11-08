# $OpenBSD: Makefile,v 1.25 2010/11/08 23:28:53 jeremy Exp $

COMMENT =	object relation model implementation for ruby

DISTNAME =	activerecord-2.3.4
REVISION =      1
CATEGORIES =	databases

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS = 	:${MODRUBY_PKG_PREFIX}-activesupport-2.3.4:devel/ruby-activesupport,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake
REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-mysql-*:databases/ruby-mysql,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-sqlite3-*:databases/ruby-sqlite3,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-pg-*:databases/ruby-pg,${FLAVOR}

.include <bsd.port.mk>
