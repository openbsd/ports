# $OpenBSD: Makefile,v 1.4 2007/12/17 23:10:51 simon Exp $

COMMENT= 	parsesr Email dates into DateTime

MODULES=	cpan 
DISTNAME=	DateTime-Format-Mail-0.3001
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
