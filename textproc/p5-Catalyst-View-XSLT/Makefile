# $OpenBSD: Makefile,v 1.6 2008/12/07 06:53:27 simon Exp $

COMMENT= 	XSLT Views for catalyst

MODULES=	cpan
DISTNAME=	Catalyst-View-XSLT-0.06
CATEGORIES=	textproc

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-XML-LibXSLT->=1.60:textproc/p5-XML-LibXSLT \
		::www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
