# $OpenBSD: Makefile,v 1.1.1.1 2010/06/30 16:45:28 jim Exp $

COMMENT=		track the number of times subs are called

MODULES=		cpan
DISTNAME=		Test-SubCalls-1.09
CATEGORIES=		devel

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	::devel/p5-Hook-LexWrap

.include <bsd.port.mk>
