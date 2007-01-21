# $OpenBSD: Makefile,v 1.2 2007/01/21 21:46:21 simon Exp $

COMMENT=	"force number of words to singular or plural"

MODULES=	cpan
DISTNAME=	Lingua-EN-Inflect-Number-1.1
CATEGORIES=	textproc

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-Lingua-EN-Inflect
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
