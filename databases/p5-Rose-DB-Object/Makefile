# $OpenBSD: Makefile,v 1.9 2010/10/18 17:06:08 espie Exp $

COMMENT=	object-oriented database mapper

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	Rose-DB-Object-0.784
REVISION=	0
CATEGORIES=	databases

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Rose-DB->=0.737:databases/p5-Rose-DB \
		:p5-Rose-Object->=0.83:databases/p5-Rose-Object \
		::devel/p5-Clone \
		::devel/p5-List-MoreUtils

REGRESS_DEPENDS=::textproc/p5-Lingua-EN-Inflect \
		::devel/p5-Test-Pod

REGRESS_FLAGS += AUTOMATED_TESTING=1
.include <bsd.port.mk>
