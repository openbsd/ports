# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:20 espie Exp $

COMMENT=		base class for creating plugin enabled POE Components

DISTNAME=		POE-Component-Pluggable-1.24
REVISION=		0
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-POE>=1.0002 \
			devel/p5-Task-Weaken

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
