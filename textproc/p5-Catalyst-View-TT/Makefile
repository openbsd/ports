# $OpenBSD: Makefile,v 1.2 2006/11/28 11:09:51 espie Exp $

COMMENT= 	"Template Toolkit views for Catalyst"

DISTNAME=	Catalyst-View-TT-0.24
CATEGORIES=	textproc

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

BUILD_DEPENDS=	::devel/p5-Data-Dump \
		::devel/p5-Path-Class \
		::textproc/p5-Template-Timer \
		::www/p5-Catalyst-Runtime
RUN_DEPENDS=	${BUILD_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
