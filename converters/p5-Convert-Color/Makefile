# $OpenBSD: Makefile,v 1.1.1.1 2011/06/14 11:16:10 robert Exp $

COMMENT=	color space conversions and named lookups

DISTNAME=	Convert-Color-0.08
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

.include <bsd.port.mk>
