# $OpenBSD: Makefile,v 1.1.1.1 2001/03/25 08:34:57 kevlo Exp $

DISTNAME=	kmago-1.1
CATEGORIES=	net
NEED_VERSION=	1.363

HOMEPAGE=	http://kmago.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= kmago

LIB_DEPENDS=	kdecore.3.::x11/kde/libs2

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure qt2 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${LOCALBASE}/lib/qt2'

USE_GMAKE=	Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--with-qt-includes=${LOCALBASE}/include/X11/qt2
CONFIGURE_ARGS+=	--with-qt-libraries=${LOCALBASE}/lib/qt2
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ENV=	MOC=${LOCALBASE}/bin/moc2  KDEDIR=/usr/local

FLAVORS=	wget
FLAVOR?=

.if ${FLAVOR:L} == "wget"
RUN_DEPENDS=	wget::net/wget
.else
CONFIGURE_ARGS+= --disable-wget
.endif

.include <bsd.port.mk>
