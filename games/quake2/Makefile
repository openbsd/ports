# $OpenBSD: Makefile,v 1.1.1.1 2007/03/16 18:26:01 claudio Exp $

ONLY_FOR_ARCHS= 	i386

COMMENT=		"first person shooter"

DISTNAME=		quake2-0.3
CATEGORIES=		games

HOMEPAGE=		http://www.quakeforge.net/
MAINTAINER=		Claudio Jeker <claudio@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xxf86dga Xxf86vm c m ossaudio pthread \
			usbhid

MASTER_SITES=		http://www.quakeforge.net/files/quake2forge/
EXTRACT_SUFX=		.tar.gz

LIB_DEPENDS=		SDL::devel/sdl

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
NO_REGRESS=		Yes

CFLAGS+=                -pthread -g

PLUGINS=		ref_softsdl.so ref_softx.so snd_oss.so snd_sdl.so \
			snd_solaris.so baseq2/game.so ctf/game.so

post-install:
	(cd ${PREFIX}/lib/quake2; for i in ${PLUGINS}; do \
		mv $${i}.0.0 $${i}; \
	done)

.include <bsd.port.mk>
