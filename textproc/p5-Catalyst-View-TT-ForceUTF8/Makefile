# $OpenBSD: Makefile,v 1.3 2007/09/15 20:59:39 merdely Exp $

COMMENT= 	catalyst TT views with explicit UTF8 encoding

MODULES=	cpan
DISTNAME=	Catalyst-View-TT-ForceUTF8-0.06
CATEGORIES=	textproc devel

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-Catalyst-View-TT \
		::www/p5-Catalyst-Plugin-Singleton \
		::textproc/p5-Template-Provider-Encoding

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
