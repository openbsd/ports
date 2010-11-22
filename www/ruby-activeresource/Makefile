# $OpenBSD: Makefile,v 1.13 2010/11/22 08:36:53 espie Exp $

COMMENT =	wraps web resources in model classes

DISTNAME =	activeresource-2.3.4
REVISION =      1
CATEGORIES =	www

# MIT License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-activesupport,${FLAVOR}>=2.3.4

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
