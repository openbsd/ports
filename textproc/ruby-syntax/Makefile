# $OpenBSD: Makefile,v 1.1.1.1 2010/12/20 18:19:10 jeremy Exp $

COMMENT =	a module for using syntax highlighting in ruby

DISTNAME =	syntax-1.0.0
CATEGORIES =	textproc

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES = 	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_REGRESS = rake

do-regress:
	cd ${WRKSRC} && ${LOCALBASE}/bin/ruby test/ALL-TESTS.rb --verbose

.include <bsd.port.mk>
