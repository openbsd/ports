# $OpenBSD: Makefile,v 1.13 2013/03/11 11:35:52 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	communicate with DBus message system

MODULES=	cpan
DISTNAME=	Net-DBus-0.33.6
REVISION=	5
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c dbus-1>=6

RUN_DEPENDS=	textproc/p5-XML-Twig
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	x11/dbus

.include <bsd.port.mk>
