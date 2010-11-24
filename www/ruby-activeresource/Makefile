# $OpenBSD: Makefile,v 1.14 2010/11/24 21:35:16 jeremy Exp $

COMMENT =	wraps web resources in model classes

DISTNAME =	activeresource-2.3.4
REVISION =	2
CATEGORIES =	www

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-activesupport,${MODRUBY_FLAVOR}>=2.3.4

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
