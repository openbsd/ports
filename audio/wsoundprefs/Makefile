# $OpenBSD: Makefile,v 1.2 2001/01/09 22:34:30 naddy Exp $

DISTNAME=	WSoundPrefs-1.1.1
PKGNAME=	${DISTNAME:L}
CATEGORIES=	audio
NEED_VERSION=	1.336
MASTER_SITES=	ftp://shadowmere.student.utwente.nl/pub/WindowMaker/
HOMEPAGE=	http://shadowmere.student.utwente.nl/

MAINTAINER=	Peter Stromberg <home@wilfried.net>

BUILD_DEPENDS=	wmaker::x11/windowmaker
LIB_DEPENDS=	PropList.2::devel/libproplist \
		wsound:audio/wsoundserver
RUN_DEPENDS=	wmaker::x11/windowmaker

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= imake noman

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wsoundprefs
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/wsoundprefs

.include <bsd.port.mk>
