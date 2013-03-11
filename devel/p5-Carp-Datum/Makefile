# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:13 espie Exp $

COMMENT=	debugging and tracing ultimate module

MODULES=	cpan
DISTNAME=	Carp-Datum-0.1.3
REVISION=	2
CATEGORIES=	devel perl5
USE_GROFF =	Yes

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Getargs-Long>=0.1.3
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
