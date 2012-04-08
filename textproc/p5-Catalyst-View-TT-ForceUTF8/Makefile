# $OpenBSD: Makefile,v 1.9 2012/04/08 22:04:39 sthen Exp $

COMMENT=	catalyst TT views with explicit UTF8 encoding (deprecated)

MODULES=	cpan
DISTNAME=	Catalyst-View-TT-ForceUTF8-0.13
CATEGORIES=	textproc devel
USE_GROFF =	Yes

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	textproc/p5-Catalyst-View-TT \
		www/p5-Catalyst-Plugin-Singleton \
		textproc/p5-Template-Provider-Encoding

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
