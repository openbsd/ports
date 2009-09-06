# $OpenBSD: Makefile,v 1.3 2009/09/06 14:00:12 okan Exp $

COMMENT=	implementation of reStructuredText parser

DISTNAME=	Text-Restructured-0.003040
CATEGORIES=	textproc
MODULES=	cpan

CPAN_AUTHOR=	NODINE

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Slay-Makefile-Gress-*:devel/p5-Slay-Makefile-Gress \
		:p5-Text-ASCIIMathML-*:textproc/p5-Text-ASCIIMathML \
		:p5-Safe-World-*:devel/p5-Safe-World
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
