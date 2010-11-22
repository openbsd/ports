# $OpenBSD: Makefile,v 1.9 2010/11/22 08:36:53 espie Exp $

COMMENT =	ruby library for handling credit card processor merchants

DISTNAME =	activemerchant-1.4.2
REVISION =      1
CATEGORIES =	www

HOMEPAGE =	http://www.activemerchant.org/

# mit
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-activesupport,${FLAVOR} \
		textproc/ruby-builder,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
