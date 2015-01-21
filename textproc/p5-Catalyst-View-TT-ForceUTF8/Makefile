# $OpenBSD: Makefile,v 1.11 2015/01/21 14:41:37 sthen Exp $

COMMENT=	catalyst TT views with explicit UTF8 encoding (deprecated)

MODULES=	cpan
DISTNAME=	Catalyst-View-TT-ForceUTF8-0.13
CATEGORIES=	textproc devel

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-Catalyst-View-TT \
		www/p5-Catalyst-Plugin-Singleton \
		textproc/p5-Template-Provider-Encoding

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
