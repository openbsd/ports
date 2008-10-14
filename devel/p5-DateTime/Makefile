# $OpenBSD: Makefile,v 1.9 2008/10/14 21:06:50 steven Exp $

COMMENT=		perl objected oriented Date Time

SHARED_ONLY=		Yes

MODULES=		cpan
DISTNAME=		DateTime-0.4305
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		:p5-DateTime-Locale->=0.41:devel/p5-DateTime-Locale \
			:p5-DateTime-TimeZone->=0.59:devel/p5-DateTime-TimeZone \
			:p5-Params-Validate->=0.76:devel/p5-Params-Validate

.include <bsd.port.mk>	
