# $OpenBSD: Makefile,v 1.4 2001/01/19 17:37:56 naddy Exp $

DISTNAME=	WSoundPrefs-1.1.1
PKGNAME=	${DISTNAME:L}
CATEGORIES=	audio
NEED_VERSION=	1.336
MASTER_SITES=	ftp://shadowmere.student.utwente.nl/pub/WindowMaker/
HOMEPAGE=	http://shadowmere.student.utwente.nl/

MAINTAINER=	Peter Stromberg <home@wilfried.net>

LIB_DEPENDS=	PropList.2::devel/libproplist \
		wsound::audio/wsoundserver \
		audiofile::devel/libaudiofile \
		tiff.35::graphics/tiff \
		png.1::graphics/png \
		jpeg.62::graphics/jpeg \
		gif.4::graphics/giflib \
		wraster.2::x11/windowmaker
RUN_DEPENDS=	wsoundserver::audio/wsoundserver

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE= imake noman

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wsoundprefs
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/wsoundprefs

.include <bsd.port.mk>
