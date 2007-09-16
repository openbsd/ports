# $OpenBSD: Makefile,v 1.3 2007/09/16 02:53:04 merdely Exp $

COMMENT= 	parsesr Email dates into DateTime

MODULES=	cpan 
DISTNAME=	DateTime-Format-Mail-0.30
CATEGORIES=	devel converters

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	::devel/p5-DateTime \
		::devel/p5-Params-Validate

.include <bsd.port.mk>
