# $OpenBSD: Makefile,v 1.8 2009/02/11 15:47:49 jasper Exp $

COMMENT=		audio files for GNOME

GNOME_PROJECT=		gnome-audio
GNOME_VERSION=		2.22.2
PKGNAME=		${DISTNAME}p2

MODULES=		x11/gnome

# Creative Commons ShareAlike 2.0
# Creative Commons - Attribution-Share Alike 2.0 Generic
# Creative Commons - Attribution 3.0 Unported
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes
NO_REGRESS=		Yes

FAKE_FLAGS+=		datadir="${TRUEPREFIX}/share"

.include <bsd.port.mk>
