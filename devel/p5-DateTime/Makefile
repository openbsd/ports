# $OpenBSD: Makefile,v 1.7 2008/10/02 20:35:09 simon Exp $

COMMENT=		perl objected oriented Date Time

SHARED_ONLY=		Yes

MODULES=		cpan
DISTNAME=		DateTime-0.41
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		devel

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		:p5-DateTime-Locale->=0.35:devel/p5-DateTime-Locale \
			:p5-DateTime-TimeZone->=0.6603:devel/p5-DateTime-TimeZone

.include <bsd.port.mk>	
