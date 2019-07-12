# $OpenBSD: Makefile,v 1.13 2019/07/12 20:50:02 sthen Exp $

COMMENT=	catalyst TT views with explicit UTF8 encoding (deprecated)

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-View-TT-ForceUTF8-0.13
CATEGORIES=	textproc devel

# Artistic + GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-Catalyst-View-TT \
		www/p5-Catalyst-Plugin-Singleton \
		textproc/p5-Template-Provider-Encoding

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
