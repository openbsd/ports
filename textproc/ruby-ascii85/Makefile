# $OpenBSD: Makefile,v 1.10 2013/03/11 11:42:46 espie Exp $

COMMENT =	encode/decode Adobe's binary-to-text

DISTNAME =	Ascii85-0.9.0
PKGNAME =	${DISTNAME:L}
REVISION =	5
CATEGORIES =	textproc

# mit
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST = 	rspec
TEST_DEPENDS =	devel/ruby-hoe,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
