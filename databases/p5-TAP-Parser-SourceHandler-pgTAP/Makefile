# $OpenBSD: Makefile,v 1.2 2020/07/03 21:44:38 sthen Exp $

COMMENT =	stream TAP from pgTAP test scripts

DISTNAME =	TAP-Parser-SourceHandler-pgTAP-3.35
REVISION =	0

CATEGORIES =	databases

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

PKG_ARCH =		*
CONFIGURE_STYLE =	modbuild
BUILD_DEPENDS =		devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
