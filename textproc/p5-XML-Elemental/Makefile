# $OpenBSD: Makefile,v 1.11 2016/03/20 19:57:11 naddy Exp $

COMMENT =	generic classes for simplistic handling of XML data

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	XML-Elemental-2.11
CATEGORIES =	textproc
REVISION =	0

# Artistic
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Class-Accessor \
		textproc/p5-XML-Parser \
		textproc/p5-XML-SAX \
		devel/p5-Task-Weaken>=1.02

.include <bsd.port.mk>
