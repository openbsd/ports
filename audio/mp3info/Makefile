# $OpenBSD: Makefile,v 1.17 2003/12/13 01:17:52 margarida Exp $

COMMENT=	"MP3 information tool"

DISTNAME=	mp3info-0.8.4
CATEGORIES=	audio

HOMEPAGE=	http://www.ibiblio.org/mp3info/

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/sound/mp3-utils/mp3info/}

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tgz

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
ALL_TARGET=	mp3info doc
INSTALL_TARGET=	install-no_x11
.else
USE_X11=	Yes
LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+	
.endif

.include <bsd.port.mk>
