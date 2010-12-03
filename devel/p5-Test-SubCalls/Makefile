# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:37 ajacoutot Exp $

COMMENT=		track the number of times subs are called

MODULES=		cpan
DISTNAME=		Test-SubCalls-1.09
REVISION=		0
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
