# $OpenBSD: Makefile,v 1.3 2011/10/05 17:30:57 jasper Exp $

COMMENT=	color space conversions and named lookups

DISTNAME=	Convert-Color-0.08
REVISION=	1
CATEGORIES=	converters
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-List-UtilsBy

CONFIGURE_STYLE=modbuild
MODCPAN_EXAMPLES=Yes

.include <bsd.port.mk>
