# $OpenBSD: Makefile,v 1.2 2012/09/23 16:57:34 jeremy Exp $

COMMENT =	rack-based asset packaging system

DISTNAME =	sprockets-2.0.3
REVISION =	0
CATEGORIES =	devel	

HOMEPAGE =	https://github.com/sstephenson/sprockets

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-rack,${MODRUBY_FLAVOR}>=1.0,<2.0 \
			devel/ruby-tilt,${MODRUBY_FLAVOR}>=1.1,<2.0 \
			devel/ruby-hike,${MODRUBY_FLAVOR}>=1.2,<2.0

.include <bsd.port.mk>
