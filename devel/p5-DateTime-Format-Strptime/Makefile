# $OpenBSD: Makefile,v 1.6 2009/05/20 06:42:29 pea Exp $

COMMENT=	parse and format strp and strf time patterns

MODULES=	cpan
DISTNAME=	DateTime-Format-Strptime-1.0900
CATEGORIES=	devel
EXTRACT_SUFX=	.tgz

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-DateTime->=0.5000:devel/p5-DateTime \
			:p5-DateTime-Locale->=0.41:devel/p5-DateTime-Locale \
			:p5-DateTime-TimeZone->=0.79:devel/p5-DateTime-TimeZone \
			:p5-Params-Validate->=0.64:devel/p5-Params-Validate

.include <bsd.port.mk>
