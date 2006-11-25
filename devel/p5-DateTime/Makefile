# $OpenBSD: Makefile,v 1.4 2006/11/25 16:32:34 espie Exp $

COMMENT=		"perl objected oriented Date Time"

SHARED_ONLY=		Yes

MODULES=		cpan
DISTNAME=		DateTime-0.34
CATEGORIES=		devel

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		::devel/p5-DateTime-Locale \
			::devel/p5-DateTime-TimeZone

.include <bsd.port.mk>	
