# $OpenBSD: Makefile,v 1.4 2010/11/08 23:28:55 jeremy Exp $

COMMENT =	encode/decode Adobe's binary-to-text

DISTNAME =	Ascii85-0.9.0
PKGNAME =	${DISTNAME:L}
REVISION =	1
CATEGORIES =	textproc

# mit
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS = 	rspec
REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-hoe-*:devel/ruby-hoe,${FLAVOR}

.include <bsd.port.mk>
