# $OpenBSD: Makefile,v 1.2 2011/09/16 11:41:42 espie Exp $

COMMENT =	discount implementation of John Gruber's Markdown

DISTNAME =	rdiscount-1.6.5
REVISION=	0
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
