# $OpenBSD: Makefile,v 1.3 2001/01/17 16:13:29 naddy Exp $

DISTNAME=	WSoundPrefs-1.1.1
PKGNAME=	${DISTNAME:L}
CATEGORIES=	audio
NEED_VERSION=	1.336
MASTER_SITES=	ftp://shadowmere.student.utwente.nl/pub/WindowMaker/
HOMEPAGE=	http://shadowmere.student.utwente.nl/

MAINTAINER=	Peter Stromberg <home@wilfried.net>

BUILD_DEPENDS=	wmaker::x11/windowmaker
LIB_DEPENDS=	PropList.2::devel/libproplist \
		wsound::audio/wsoundserver \
		audiofile::devel/libaudiofile \
		tiff.35::graphics/tiff \
		png.1::graphics/png \
		jpeg.62::graphics/jpeg \
		gif.4::graphics/giflib
RUN_DEPENDS=	wmaker::x11/windowmaker

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
