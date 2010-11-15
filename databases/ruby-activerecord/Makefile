# $OpenBSD: Makefile,v 1.26 2010/11/15 00:22:53 espie Exp $

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
RUN_DEPENDS = 	STEM-2.3.4:devel/ruby-activesupport,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake
REGRESS_DEPENDS =	databases/ruby-mysql,${FLAVOR} \
			databases/ruby-sqlite3,${FLAVOR} \
			databases/ruby-pg,${FLAVOR}

.include <bsd.port.mk>
