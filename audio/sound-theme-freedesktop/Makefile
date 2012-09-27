# $OpenBSD: Makefile,v 1.16 2012/09/27 07:18:09 ajacoutot Exp $

COMMENT=	XDG sound theme

DISTNAME=	sound-theme-freedesktop-0.8
CATEGORIES=	audio

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://freedesktop.org/wiki/Specifications/sound-theme-spec

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2 - GPLv2
# CC-SAv2.0 - CC-Av3.0 Unported
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://people.freedesktop.org/~mccann/dist/

MODULES=	textproc/intltool

USE_GMAKE=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE=gnu

post-install:
	cd ${PREFIX}/share/sounds/freedesktop/stereo && \
		ln -sf service-login.oga desktop-login.oga && \
		ln -sf service-logout.oga desktop-logout.oga

.include <bsd.port.mk>
