# $OpenBSD: Makefile,v 1.1.1.1 2005/03/07 16:41:28 todd Exp $

ONLY_FOR_ARCHS=	i386 macppc # no success building on other archs yet

COMMENT=		"multi system emulator"
DISTNAME=		qemu-20050227
CATEGORIES=		emulators

HOMEPAGE=		http://fabrice.bellard.free.fr/qemu/

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.FreeDaemonHosting.com/pub/users/todd/

LIB_DEPENDS=    	SDL::devel/sdl
USE_GMAKE=		Yes
USE_X11=		Yes
WANTLIB=		m z ossaudio X11 Xext usbhid util pthread c
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
