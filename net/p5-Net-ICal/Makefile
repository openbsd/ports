# $OpenBSD: Makefile,v 1.10 2015/01/21 14:40:10 sthen Exp $

COMMENT=	Perl interface to RFC2445 (iCalendar) objects

MODULES=	cpan
DISTNAME=	Net-ICal-0.15
REVISION=	1
CATEGORIES=	net

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-MethodMapper \
		devel/p5-Date-Calc \
		devel/p5-Date-ICal
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
