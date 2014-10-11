# $OpenBSD: Makefile,v 1.10 2014/10/11 19:54:47 jeremy Exp $

COMMENT =	discount implementation of John Gruber's Markdown

DISTNAME =	rdiscount-1.6.5
REVISION=	6
CATEGORIES =	textproc

# BSD
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

MODRUBY_TEST = rake

MODRUBY_TEST_TARGET = test:unit

.include <bsd.port.mk>
