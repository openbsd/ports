# $OpenBSD: Makefile,v 1.9 2000/10/22 14:02:59 espie Exp $

DISTNAME=	jpilot-0.98.1
CATEGORIES=	comms
NEED_VERSION=	1.322

MASTER_SITES=	http://jpilot.linuxave.net/

HOMEPAGE=	http://jpilot.linuxave.net/

MAINTAINER=	Hakan Olsson <ho@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	pisock.3::comms/pilot-link \
		gtk.1.2::x11/gtk+

USE_X11=		yes
CONFIGURE_STYLE=	autoconf

post-install:
	mkdir -p ${PREFIX}/share/doc/jpilot
	cp ${WRKSRC}/docs/plugin.html ${PREFIX}/share/doc/jpilot

.include <bsd.port.mk>
