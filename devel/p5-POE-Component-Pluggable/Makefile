# $OpenBSD: Makefile,v 1.9 2010/11/26 07:19:01 espie Exp $

COMMENT=		base class for creating plugin enabled POE Components

DISTNAME=		POE-Component-Pluggable-1.24
CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-POE>=1.0002 \
			devel/p5-Task-Weaken

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
