# $OpenBSD: Makefile,v 1.8 2011/09/16 11:41:41 espie Exp $

COMMENT =	encode/decode Adobe's binary-to-text

DISTNAME =	Ascii85-0.9.0
PKGNAME =	${DISTNAME:L}
REVISION =	4
CATEGORIES =	textproc

# mit
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS = 	rspec
REGRESS_DEPENDS =	devel/ruby-hoe,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
