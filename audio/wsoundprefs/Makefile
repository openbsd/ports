# $OpenBSD: Makefile,v 1.15 2002/03/21 20:35:43 espie Exp $

COMMENT=		'preferences program for wsoundserver'

DISTNAME=		WSoundPrefs-1.1.1
PKGNAME=		${DISTNAME:L}
CATEGORIES=		audio
NEED_VERSION=		1.515

HOMEPAGE=		http://shadowmere.student.utwente.nl/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://shadowmere.student.utwente.nl/pub/WindowMaker/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

MODULES=		gettext
RUN_DEPENDS=		:wsoundserver-*:audio/wsoundserver
LIB_DEPENDS=		PropList.2::devel/libproplist \
			wsound::audio/wsoundserver \
			audiofile::devel/libaudiofile \
			wraster.4::x11/windowmaker

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	imake noman

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wsoundprefs
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/wsoundprefs

.include <bsd.port.mk>
