# $OpenBSD: Makefile,v 1.19 2004/11/28 22:41:18 espie Exp $

COMMENT=	"simple gtk+ pool simulation game"

DISTNAME=	gtkpool-0.5.0
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}	

HOMEPAGE=	http://gtkpool.seul.org/

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		glib gmodule iconv intl X11 Xext Xi c m ossaudio stdc++

USE_X11=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LIBS="-lossaudio"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
