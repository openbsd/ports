# $OpenBSD: Makefile,v 1.7 2013/03/11 11:42:43 espie Exp $

COMMENT=	force number of words to singular or plural

MODULES=	cpan
DISTNAME=	Lingua-EN-Inflect-Number-1.1
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-Lingua-EN-Inflect
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
