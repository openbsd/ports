# $OpenBSD: Makefile,v 1.1.1.1 2007/11/02 14:54:27 merdely Exp $

COMMENT=	implementation of reStructuredText parser

DISTNAME=	Text-Restructured-0.003036
CATEGORIES=	textproc
MODULES=	cpan

MAINTAINER=	Okan Demirmen <okan@demirmen.com>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Slay-Makefile-Gress-*:devel/p5-Slay-Makefile-Gress \
		:p5-Text-ASCIIMathML-*:textproc/p5-Text-ASCIIMathML
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
