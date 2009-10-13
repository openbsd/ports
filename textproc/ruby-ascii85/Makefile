# $OpenBSD: Makefile,v 1.1.1.1 2009/10/13 14:41:59 pirofti Exp $

COMMENT =	encode/decode Adobe's binary-to-text

DISTNAME =	Ascii85-0.9.0
PKGNAME =	ruby-${DISTNAME:L}
CATEGORIES =	textproc

# mit
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=ascii85/}

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
#RUN_DEPENDS =	

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =	*

MODRUBY_REGRESS = 	rspec
REGRESS_DEPENDS =	::devel/ruby-hoe

.include <bsd.port.mk>
