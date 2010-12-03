# $OpenBSD: Makefile,v 1.29 2010/12/03 11:50:16 jasper Exp $

COMMENT =	object relation model implementation for ruby

DISTNAME =	activerecord-2.3.4
REVISION =	2
CATEGORIES =	databases

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS = 	devel/ruby-activesupport,${MODRUBY_FLAVOR}=2.3.4

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake
REGRESS_DEPENDS =	databases/ruby-mysql,${MODRUBY_FLAVOR} \
			databases/ruby-sqlite3,${MODRUBY_FLAVOR} \
			databases/ruby-pg,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
