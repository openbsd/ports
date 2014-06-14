# $OpenBSD: Makefile,v 1.15 2014/06/14 23:25:42 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl API to the dbus inter-application messaging system

MODULES=	cpan
DISTNAME=	Net-DBus-1.0.0
CATEGORIES=	net x11
REVISION=	0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += dbus-1

RUN_DEPENDS=	textproc/p5-XML-Twig
BUILD_DEPENDS=	textproc/p5-XML-Twig
LIB_DEPENDS=	x11/dbus
TEST_DEPENDS=	devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
