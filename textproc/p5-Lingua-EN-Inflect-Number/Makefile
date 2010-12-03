# $OpenBSD: Makefile,v 1.6 2010/12/03 11:46:48 ajacoutot Exp $

COMMENT=	force number of words to singular or plural

MODULES=	cpan
DISTNAME=	Lingua-EN-Inflect-Number-1.1
REVISION=	0
CATEGORIES=	textproc
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	textproc/p5-Lingua-EN-Inflect
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
