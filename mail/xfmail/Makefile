# $OpenBSD: Makefile,v 1.26 2002/06/23 03:49:50 brad Exp $
# $NetBSD: Makefile,v 1.2 1998/07/04 09:19:04 mycroft Exp $
# $RuOBSD: Makefile,v 1.4 2002/05/18 04:21:36 form Exp $

COMMENT=		"xforms-based mail application for Unix"

DISTNAME=       	xfmail-1.5.2
CATEGORIES=     	mail x11
NEED_VERSION=		1.522
MASTER_SITES=		ftp://ftp.xfmail.org/pub/xfmail/release/1.5.2/source/

EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.xfmail.org/

BUILD_DEPENDS=		autoconf::devel/autoconf \
					automake::devel/automake

LIB_DEPENDS=		forms::x11/xforms \
					glib.1.2::devel/glib

MAINTAINER=		Oleg Safiullin <form@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
USE_LIBTOOL=	Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-nas-sound
CONFIGURE_ENV=		CPPFLAGS="-DX11FORMS_H"

FLAVORS=		esd
FLAVOR?=

.if ${FLAVOR:L:Mesd}
CONFIGURE_ARGS+=	--with-esd-sound
LIB_DEPENDS+=		esd.2::audio/esound
.else
CONFIGURE_ARGS+=	--without-esd-sound
.endif

pre-configure:
	@cd ${WRKSRC} && sh autogen.sh

.include <bsd.port.mk>
