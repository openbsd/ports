# $OpenBSD: Makefile,v 1.13 2010/10/11 08:54:21 stephan Exp $

COMMENT=		perl objected oriented Date Time

SHARED_ONLY=		Yes

MODULES=		cpan
DISTNAME=		DateTime-0.63
EPOCH=			0
CATEGORIES=		devel

# Artistic 2.0
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

REGRESS_DEPENDS=	::devel/p5-DateTime-Format-Strptime

RUN_DEPENDS=		:p5-DateTime-Locale->=0.41:devel/p5-DateTime-Locale \
			:p5-DateTime-TimeZone->=1.09:devel/p5-DateTime-TimeZone \
			:p5-Params-Validate->=0.76:devel/p5-Params-Validate
BUILD_DEPENDS= 		${RUN_DEPENDS}

CONFIGURE_STYLE=	modbuild

.include <bsd.port.mk>
