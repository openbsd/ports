# $OpenBSD: Makefile,v 1.8 2013/10/11 23:51:09 naddy Exp $

COMMENT=	force number of words to singular or plural

MODULES=	cpan
DISTNAME=	Lingua-EN-Inflect-Number-1.1
REVISION=	0
CATEGORIES=	textproc

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-Lingua-EN-Inflect
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
