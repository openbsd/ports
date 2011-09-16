# $OpenBSD: Makefile,v 1.8 2011/09/16 08:26:10 espie Exp $

COMMENT=		curses based frontend for mpd

DISTNAME=		pms-0.42
EXTRACT_SUFX = 		.tar.bz2
CATEGORIES=		audio
REVISION =		0

HOMEPAGE=		http://pms.sourceforge.net/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c glib-2.0 m ncurses stdc++
LIB_DEPENDS=		devel/glib2

MODULES=		devel/gettext \
			textproc/intltool

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pms/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =		Yes

# fix up timestamp to keep autotools cascade from triggering
post-patch:
	@touch -r ${WRKSRC}/aclocal.m4 ${WRKSRC}/configure.ac

.include <bsd.port.mk>
