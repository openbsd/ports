# $OpenBSD: Makefile,v 1.2 2006/11/25 16:32:34 espie Exp $

COMMENT=	"parse and format strp and strf time patterns"

MODULES=	cpan
DISTNAME=	DateTime-Format-Strptime-1.0700
CATEGORIES=	devel

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-DateTime \
			::devel/p5-DateTime-Locale \
			::devel/p5-DateTime-TimeZone \
			::devel/p5-Params-Validate

BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
