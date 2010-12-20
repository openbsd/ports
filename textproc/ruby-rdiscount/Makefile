# $OpenBSD: Makefile,v 1.1.1.1 2010/12/20 18:10:00 jeremy Exp $

COMMENT =	discount implementation of John Gruber's Markdown

DISTNAME =	rdiscount-1.6.5
CATEGORIES =	textproc

# BSD
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

MODRUBY_REGRESS = rake

RAKE_REGRESS_TARGET = test:unit

.include <bsd.port.mk>
