# $OpenBSD: Makefile,v 1.25 2003/11/02 00:38:32 margarida Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"multi-purpose sniffer/interceptor/logger"

VER=		0.6.b
DISTNAME=	ettercap-${VER}
CATEGORIES=	net

HOMEPAGE=	http://ettercap.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ettercap/} \
		${MASTER_SITE_PACKETSTORM:=sniffers/ettercap/}

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		gcc3   
MODGCC3_ARCHES=		sparc64

FLAVORS=		no_x11
FLAVOR?=

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-https

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--enable-gtk=no
.else
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
