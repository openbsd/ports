# $OpenBSD: Makefile,v 1.10 2002/04/23 01:49:22 kevlo Exp $

COMMENT=	"desktop planetarium"

DISTNAME=	kstars-0.8.5
CATEGORIES=	astro
NEED_VERSION=	1.502

HOMEPAGE=	http://edu.kde.org/kstars/index.phtml

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	kstars

BUILD_DEPENDS=	::x11/qt2-designer \
		:zsh-*:shells/zsh/stable

LIB_DEPENDS=	kdecore.3,DCOP,kio,kfile,kdeui,kdesu,kssl,ksycoca::x11/kde/libs2

MODULES=	qt2

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure qt2 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${MODQT_LIBDIR}'

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${MODQT_CONFIGURE_ARGS} \
		--with-extra-libs=${LOCALBASE}/lib \
		--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ENV=	KDEDIR=${LOCALBASE} \
		CONFIG_SHELL=${WRKBUILD}/sh
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin

pre-configure:
	# Let zsh act as an sh replacement
	ln -sf ${LOCALBASE}/bin/zsh ${WRKBUILD}/sh

.include <bsd.port.mk>
