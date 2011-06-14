# $OpenBSD: Makefile,v 1.2 2011/06/14 11:18:06 jasper Exp $

COMMENT=	color space conversions and named lookups

DISTNAME=	Convert-Color-0.08
REVISION=	0
CATEGORIES=	converters
MODULES=	cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	textproc/p5-List-UtilsBy
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=modbuild
MODCPAN_EXAMPLES=Yes

.include <bsd.port.mk>
