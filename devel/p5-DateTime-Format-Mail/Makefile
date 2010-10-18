# $OpenBSD: Makefile,v 1.5 2010/10/18 17:47:59 espie Exp $

COMMENT= 	parsesr Email dates into DateTime

MODULES=	cpan 
DISTNAME=	DateTime-Format-Mail-0.3001
CATEGORIES=	devel converters
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=modbuild

RUN_DEPENDS=	::devel/p5-DateTime \
		::devel/p5-Params-Validate

.include <bsd.port.mk>
