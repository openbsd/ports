# $OpenBSD: Makefile,v 1.3 2007/09/15 20:59:39 merdely Exp $

COMMENT= 	XSLT Views for catalyst

MODULES=	cpan
DISTNAME=	Catalyst-View-XSLT-0.03
CATEGORIES=	textproc

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-XML-LibXSLT->=1.60:textproc/p5-XML-LibXSLT \
		::www/p5-Catalyst-Runtime \
		::devel/p5-Universal-require

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
