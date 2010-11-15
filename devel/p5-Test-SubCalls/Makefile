# $OpenBSD: Makefile,v 1.3 2010/11/15 19:46:06 espie Exp $

COMMENT=		track the number of times subs are called

MODULES=		cpan
DISTNAME=		Test-SubCalls-1.09
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	devel/p5-Hook-LexWrap

.include <bsd.port.mk>
