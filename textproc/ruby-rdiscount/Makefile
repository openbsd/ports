# $OpenBSD: Makefile,v 1.6 2013/03/11 11:42:47 espie Exp $

COMMENT =	discount implementation of John Gruber's Markdown

DISTNAME =	rdiscount-1.6.5
REVISION=	2
CATEGORIES =	textproc

# BSD
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

MODRUBY_TEST = rake

MODRUBY_TEST_TARGET = test:unit

.include <bsd.port.mk>
