# $OpenBSD: Makefile,v 1.16 2010/11/26 07:19:00 espie Exp $

COMMENT=		perl objected oriented Date Time

SHARED_ONLY=		Yes

MODULES=		cpan
DISTNAME=		DateTime-0.63
EPOCH=			0
CATEGORIES=		devel
USE_GROFF =		Yes

# Artistic 2.0
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

REGRESS_DEPENDS=	devel/p5-DateTime-Format-Strptime

RUN_DEPENDS=		devel/p5-DateTime-Locale>=0.41 \
			devel/p5-DateTime-TimeZone>=1.09 \
			devel/p5-Params-Validate>=0.76
BUILD_DEPENDS= 		${RUN_DEPENDS}

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
