# $OpenBSD: Makefile,v 1.9 2019/07/12 20:50:05 sthen Exp $

COMMENT =		simple and pure Perl RSS parser

DISTNAME =		RSS-Parser-Lite-0.12
CATEGORIES =		textproc
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

CPAN_AUTHOR =		TFPBL

RUN_DEPENDS =		www/p5-SOAP-Lite \
			textproc/p5-XML-Parser-Lite

.include <bsd.port.mk>
