# $OpenBSD: Makefile,v 1.8 2002/05/15 17:42:24 espie Exp $

COMMENT=	"download manager for KDE"

DISTNAME=	kmago-1.1.2
CATEGORIES=	net
NEED_VERSION=	1.489

HOMEPAGE=	http://kmago.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kmago/}

BUILD_DEPENDS=	::x11/qt2-designer
LIB_DEPENDS=	kdecore.3.::x11/kde/libs2

MAKE_ENV=	${CONFIGURE_ENV}
# Ensure qt2 will always be at the front
MAKE_FLAGS=	CXXLD='--tag CXX ${CXX} -L${LOCALBASE}/lib/qt2'

USE_GMAKE=	Yes
CONFIGURE_STYLE= 	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/admin
CONFIGURE_ARGS=		--with-qt-includes=${LOCALBASE}/include/X11/qt2
CONFIGURE_ARGS+=	--with-qt-libraries=${LOCALBASE}/lib/qt2
CONFIGURE_ARGS+=	--with-extra-libs=${LOCALBASE}/lib
CONFIGURE_ARGS+=	--with-extra-includes=${LOCALBASE}/include
CONFIGURE_ENV=	MOC=${LOCALBASE}/bin/moc2  KDEDIR=${LOCALBASE}

FLAVORS=	wget
FLAVOR?=

.if ${FLAVOR:L} == "wget"
RUN_DEPENDS=	::net/wget
.else
CONFIGURE_ARGS+= --disable-wget
.endif

.include <bsd.port.mk>
