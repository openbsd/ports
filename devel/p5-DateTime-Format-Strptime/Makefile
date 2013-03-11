# $OpenBSD: Makefile,v 1.15 2013/03/11 10:50:16 espie Exp $

COMMENT=	parse and format strp and strf time patterns

MODULES=	cpan
DISTNAME=	DateTime-Format-Strptime-1.52
CATEGORIES=	devel

EPOCH =		0

# Artistic 2.0
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-DateTime>=0.5000 \
			devel/p5-DateTime-Locale>=0.41 \
			devel/p5-DateTime-TimeZone>=0.79 \
			devel/p5-Params-Validate>=0.64

.include <bsd.port.mk>
