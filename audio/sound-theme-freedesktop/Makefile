# $OpenBSD: Makefile,v 1.2 2009/03/25 13:17:39 jasper Exp $

COMMENT=	XDG sound theme

DISTNAME=	sound-theme-freedesktop-0.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://freedesktop.org/wiki/Specifications/sound-theme-spec

# GPLv2 - GPLv2
# CC-SAv2.0 - CC-Av3.0 Unported
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://people.freedesktop.org/~mccann/dist/

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

MODULES=	textproc/intltool

.include <bsd.port.mk>
