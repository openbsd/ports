# $OpenBSD: Makefile,v 1.15 2010/11/26 07:19:00 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	meta object protocol for perl 5

MODULES=	cpan
DISTNAME=	Class-MOP-1.03
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-GlobalDestruction \
		devel/p5-List-MoreUtils \
		devel/p5-MRO-Compat \
		devel/p5-Package-Stash \
		devel/p5-Sub-Name>=0.04 \
		devel/p5-Task-Weaken \
		devel/p5-Try-Tiny

REGRESS_DEPENDS=devel/p5-Test-Exception \
		devel/p5-Test-LeakTrace \
		devel/p5-Test-Output \
		devel/p5-SUPER

.include <bsd.port.mk>
