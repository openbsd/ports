# $OpenBSD: Makefile,v 1.20 2006/08/01 12:13:28 espie Exp $

COMMENT=	"MP3 information tool"

DISTNAME=	mp3info-0.8.4
CATEGORIES=	audio

HOMEPAGE=	http://www.ibiblio.org/mp3info/

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/sound/mp3-utils/mp3info/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

EXTRACT_SUFX=		.tgz

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
ALL_TARGET=	mp3info doc
INSTALL_TARGET=	install-no_x11
.else
USE_X11=	Yes
LIB_DEPENDS=	gtk.>=1.2,gdk.>=1.2::x11/gtk+	
WANTLIB+=	X11 Xext Xi glib gmodule iconv intl m
.endif

.include <bsd.port.mk>
