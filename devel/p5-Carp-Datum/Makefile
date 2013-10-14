# $OpenBSD: Makefile,v 1.12 2013/10/14 22:14:38 schwarze Exp $

COMMENT=	debugging and tracing ultimate module

MODULES=	cpan
DISTNAME=	Carp-Datum-0.1.3
REVISION=	3
CATEGORIES=	devel perl5
USE_GROFF =	Yes

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Getargs-Long>=0.1.3
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
