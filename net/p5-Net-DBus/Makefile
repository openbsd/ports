# $OpenBSD: Makefile,v 1.10 2011/03/24 22:01:08 landry Exp $

SHARED_ONLY=	Yes

COMMENT=	communicate with DBus message system

MODULES=	cpan
DISTNAME=	Net-DBus-0.33.6
REVISION=	3
CATEGORIES=	net
USE_GROFF =	Yes

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	textproc/p5-XML-Twig
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	x11/dbus
WANTLIB =	dbus-1>=6

.include <bsd.port.mk>
