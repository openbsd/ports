# $OpenBSD: Makefile,v 1.11 2013/10/26 23:55:37 jeremy Exp $

COMMENT =	encode/decode Adobe's binary-to-text

DISTNAME =	Ascii85-0.9.0
PKGNAME =	${DISTNAME:L}
REVISION =	6
CATEGORIES =	textproc

# mit
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST = 	rspec
TEST_DEPENDS =	devel/ruby-hoe,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
