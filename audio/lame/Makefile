# $OpenBSD: Makefile,v 1.18 2002/05/13 18:50:36 espie Exp $

COMMENT=	"lame ain't an MP3 encoder"

VERSION=	3.92

DISTNAME=	lame-${VERSION}
CATEGORIES=	audio
NEED_VERSION=	1.507
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lame/}

HOMEPAGE=	http://www.mp3dev.org/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	MP3 patent, http://mp3licensing.com/royalty/swenc.html
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	MP3 patent, http://mp3licensing.com/royalty/swenc.html
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/lame-${VERSION}
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=	gnu

FLAVORS=	no_x11
FLAVOR?=

CONFIGURE_ARGS+=	--enable-mp3rtp
MAKE_FLAGS=	pkghtmldir=${TRUEPREFIX}/share/doc/lame
FAKE_FLAGS=	${MAKE_FLAGS}

.if ${FLAVOR:L} != "no_x11"
CONFIGURE_ARGS+=	--enable-mp3x
LIB_DEPENDS+=		gtk.1.2,gdk.1.2::x11/gtk+
.endif

.include <bsd.port.mk>
