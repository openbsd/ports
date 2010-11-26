# $OpenBSD: Makefile,v 1.12 2010/11/26 07:19:00 espie Exp $

COMMENT=	parse and format strp and strf time patterns

MODULES=	cpan
DISTNAME=	DateTime-Format-Strptime-1.5000
CATEGORIES=	devel
USE_GROFF =	Yes

# Artistic 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-DateTime>=0.5000 \
			devel/p5-DateTime-Locale>=0.41 \
			devel/p5-DateTime-TimeZone>=0.79 \
			devel/p5-Params-Validate>=0.64

.include <bsd.port.mk>
