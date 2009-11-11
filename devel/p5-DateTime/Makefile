# $OpenBSD: Makefile,v 1.11 2009/11/11 07:44:09 kevlo Exp $

COMMENT=		perl objected oriented Date Time

SHARED_ONLY=		Yes

MODULES=		cpan
DISTNAME=		DateTime-0.51
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

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>	
