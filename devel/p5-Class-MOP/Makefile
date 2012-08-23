# $OpenBSD: Makefile,v 1.18 2012/08/23 15:05:15 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	meta object protocol for perl 5

MODULES=	cpan
DISTNAME=	Class-MOP-1.12
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-GlobalDestruction \
		devel/p5-List-MoreUtils \
		devel/p5-MRO-Compat \
		devel/p5-Package-DeprecationManager \
		devel/p5-Package-Stash \
		devel/p5-Sub-Name>=0.04 \
		devel/p5-Task-Weaken \
		devel/p5-Try-Tiny>=0.07

REGRESS_DEPENDS=devel/p5-Test-Fatal \
		devel/p5-Test-LeakTrace \
		devel/p5-Test-Requires \
		devel/p5-Test-Output \
		devel/p5-SUPER

.include <bsd.port.mk>
