# $OpenBSD: Makefile,v 1.12 2012/08/23 15:50:05 sthen Exp $

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c dbus-1>=6

RUN_DEPENDS=	textproc/p5-XML-Twig
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	x11/dbus

.include <bsd.port.mk>
