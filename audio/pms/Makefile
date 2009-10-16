# $OpenBSD: Makefile,v 1.2 2009/10/16 22:16:44 edd Exp $

COMMENT=		curses based frontend for mpd

DISTNAME=		pms-0.41
EXTRACT_SUFX = 		.tar.bz2
CATEGORIES=		audio

HOMEPAGE=		http://pms.sourceforge.net/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m ncurses stdc++
LIB_DEPENDS=		glib-2.0::devel/glib2

MODULES=		textproc/intltool devel/gettext

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pms/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
