# $OpenBSD: Makefile,v 1.10 2012/04/08 22:04:42 sthen Exp $

COMMENT=	XSLT Views for catalyst

MODULES=	cpan
DISTNAME=	Catalyst-View-XSLT-0.08
CATEGORIES=	textproc
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	textproc/p5-XML-LibXSLT>=1.60 \
		www/p5-Catalyst-Runtime \
		devel/p5-Path-Class

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
