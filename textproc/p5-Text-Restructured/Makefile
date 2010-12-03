# $OpenBSD: Makefile,v 1.5 2010/12/03 11:46:49 ajacoutot Exp $

COMMENT=	implementation of reStructuredText parser

DISTNAME=	Text-Restructured-0.003040
REVISION=	0
CATEGORIES=	textproc
MODULES=	cpan

CPAN_AUTHOR=	NODINE

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Slay-Makefile-Gress \
		textproc/p5-Text-ASCIIMathML \
		devel/p5-Safe-World
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
