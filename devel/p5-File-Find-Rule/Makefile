# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:17 espie Exp $

COMMENT=	alternative interface to File::Find

MODULES=	cpan
DISTNAME=	File-Find-Rule-0.32
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Number-Compare \
		textproc/p5-Text-Glob
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
