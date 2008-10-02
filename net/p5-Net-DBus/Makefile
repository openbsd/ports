# $OpenBSD: Makefile,v 1.3 2008/10/02 20:38:37 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	communicate with DBus message system

MODULES=	cpan
DISTNAME=	Net-DBus-0.33.6
PKGNAME=	p5-${DISTNAME}p0
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
