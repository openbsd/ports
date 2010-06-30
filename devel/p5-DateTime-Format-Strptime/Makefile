# $OpenBSD: Makefile,v 1.8 2010/06/30 16:53:46 jim Exp $

COMMENT=	parse and format strp and strf time patterns

MODULES=	cpan
DISTNAME=	DateTime-Format-Strptime-1.4000
CATEGORIES=	devel

# Artistic 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:p5-DateTime->=0.5000:devel/p5-DateTime \
			:p5-DateTime-Locale->=0.41:devel/p5-DateTime-Locale \
			:p5-DateTime-TimeZone->=0.79:devel/p5-DateTime-TimeZone \
			:p5-Params-Validate->=0.64:devel/p5-Params-Validate

.include <bsd.port.mk>
