# $OpenBSD: Makefile,v 1.10 2009/05/20 06:39:49 pea Exp $

COMMENT=		perl objected oriented Date Time

SHARED_ONLY=		Yes

MODULES=		cpan
DISTNAME=		DateTime-0.50
# there was a version with four digits behind the dot and we need to pad
# to that or updates would fail
PKGNAME=		p5-${DISTNAME}00
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

REGRESS_DEPENDS=	::devel/p5-DateTime-Format-Strptime

RUN_DEPENDS=		:p5-DateTime-Locale->=0.41:devel/p5-DateTime-Locale \
			:p5-DateTime-TimeZone->=0.59:devel/p5-DateTime-TimeZone \
			:p5-Params-Validate->=0.76:devel/p5-Params-Validate

.include <bsd.port.mk>	
