# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:45 sthen Exp $

COMMENT=	catalyst TT views with explicit UTF8 encoding (deprecated)

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-View-TT-ForceUTF8-0.13
CATEGORIES=	textproc devel
REVISION=	0

# Artistic + GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-Catalyst-View-TT \
		www/p5-Catalyst-Plugin-Singleton \
		textproc/p5-Template-Provider-Encoding

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
