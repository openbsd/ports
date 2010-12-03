# $OpenBSD: Makefile,v 1.8 2010/12/03 11:45:42 ajacoutot Exp $

COMMENT=	Perl interface to RFC2445 (iCalendar) objects

MODULES=	cpan
DISTNAME=	Net-ICal-0.15
REVISION=	1
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Class-MethodMapper \
		devel/p5-Date-Calc \
		devel/p5-Date-ICal
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
