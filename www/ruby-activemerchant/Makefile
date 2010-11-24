# $OpenBSD: Makefile,v 1.10 2010/11/24 21:35:16 jeremy Exp $

COMMENT =	ruby library for handling credit card processor merchants

DISTNAME =	activemerchant-1.4.2
REVISION =	2
CATEGORIES =	www

HOMEPAGE =	http://www.activemerchant.org/

# mit
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-activesupport,${MODRUBY_FLAVOR} \
		textproc/ruby-builder,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
