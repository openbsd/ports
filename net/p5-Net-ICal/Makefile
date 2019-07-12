# $OpenBSD: Makefile,v 1.13 2019/07/12 20:48:38 sthen Exp $

COMMENT=	Perl interface to RFC2445 (iCalendar) objects

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Net-ICal-0.15
REVISION=	2
CATEGORIES=	net

# Same as Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-MethodMapper \
		devel/p5-Date-Calc \
		devel/p5-Date-ICal
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
