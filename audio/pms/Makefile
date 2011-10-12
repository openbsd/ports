# $OpenBSD: Makefile,v 1.9 2011/10/12 12:54:30 jasper Exp $

COMMENT=		curses based frontend for mpd

DISTNAME=		pms-0.42
EXTRACT_SUFX = 		.tar.bz2
CATEGORIES=		audio
REVISION =		1

HOMEPAGE=		http://pms.sourceforge.net/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c glib-2.0 m ncursesw stdc++
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
