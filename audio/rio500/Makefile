# $OpenBSD: Makefile,v 1.8 2002/05/20 00:15:23 brad Exp $

COMMENT=	"Diamond Rio 500 utilities"
DISTNAME=	rio500-0.7
CATEGORIES=	audio
NEED_VERSION=	1.364

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rio500/}

HOMEPAGE=	http://sourceforge.net/projects/rio500/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		gtk.1.2::x11/gtk+

ONLY_FOR_ARCHS=		i386

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-devicepath=/dev \
			--with-deviceentry=urio0 \
			--with-id3support

.include <bsd.port.mk>
