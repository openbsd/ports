# $OpenBSD: Makefile,v 1.4 2010/10/19 07:54:23 espie Exp $

COMMENT=	force number of words to singular or plural

MODULES=	cpan
DISTNAME=	Lingua-EN-Inflect-Number-1.1
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-Lingua-EN-Inflect
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
