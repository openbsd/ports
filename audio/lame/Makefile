# $OpenBSD: Makefile,v 1.11 2001/08/26 12:00:38 espie Exp $

COMMENT=	"Lame Ain't an MP3 Encoder"

VERSION=	3.89

DISTNAME=	lame${VERSION}beta
PKGNAME=	lame-${VERSION}b
CATEGORIES=	audio
NEED_VERSION=	1.364

MASTER_SITES=	ftp://lame.sourceforge.net/pub/lame/src/

HOMEPAGE=	http://www.sulaco.org/mp3/

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
MAKE_FLAGS+=	LIBTOOL="${LIBTOOL} ${LIBTOOL_FLAGS}"
FAKE_FLAGS=	${MAKE_FLAGS}
  

.if ${FLAVOR:L} != "no_x11"
CONFIGURE_ARGS+=	--enable-mp3x
LIB_DEPENDS+=		gtk.1.2::x11/gtk+
.endif

.include <bsd.port.mk>
