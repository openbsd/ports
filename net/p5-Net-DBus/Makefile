# $OpenBSD: Makefile,v 1.1.1.1 2007/11/21 21:12:18 landry Exp $

SHARED_ONLY=	Yes

COMMENT=	communicate with DBus message system

MODULES=	cpan
DISTNAME=	Net-DBus-0.33.5
CATEGORIES=	net

MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-XML-Twig
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	dbus-1.>=6::x11/dbus

.include <bsd.port.mk>
