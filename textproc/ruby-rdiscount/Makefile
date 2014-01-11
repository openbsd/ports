# $OpenBSD: Makefile,v 1.8 2014/01/11 22:51:03 jeremy Exp $

COMMENT =	discount implementation of John Gruber's Markdown

DISTNAME =	rdiscount-1.6.5
REVISION=	4
CATEGORIES =	textproc

# BSD
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

MODRUBY_TEST = rake

MODRUBY_TEST_TARGET = test:unit

.include <bsd.port.mk>
