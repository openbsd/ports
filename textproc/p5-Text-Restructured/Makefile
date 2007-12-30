# $OpenBSD: Makefile,v 1.2 2007/12/30 22:37:55 okan Exp $

COMMENT=	implementation of reStructuredText parser

DISTNAME=	Text-Restructured-0.003037
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
