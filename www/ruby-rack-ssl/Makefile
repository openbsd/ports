# $OpenBSD: Makefile,v 1.2 2012/09/23 16:57:35 jeremy Exp $

COMMENT =	force SSL/TLS in your rack app

DISTNAME =	rack-ssl-1.3.2
REVISION =	0
CATEGORIES =	www

HOMEPAGE =	https://github.com/josh/rack-ssl

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-rack,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
