# $OpenBSD: Makefile,v 1.5 2012/08/27 09:34:42 jasper Exp $

COMMENT =		guitar tab editor

DISTNAME =		kguitar-0.5.1
REVISION=		3

CATEGORIES =		multimedia kde

HOMEPAGE =		http://kguitar.sourceforge.net/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+; for MusicXML copyright see licenseMusicXML.html
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += DCOP ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c
WANTLIB += expat fontconfig freetype idn jpeg kdecore kdefx kdeprint
WANTLIB += kdesu kdeui kio kparts kwalletclient m png pthread
WANTLIB += stdc++ util xcb z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=kguitar/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext \
			x11/kde
LIB_DEPENDS =		x11/kde/libs3
RUN_DEPENDS =		x11/gtk+2,-guic

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-midisupport \
			--with-qt-dir="${LOCALBASE}" \
			--with-qt-libraries="${LOCALBASE}/lib/qt3" \
			--with-qt-includes="${LOCALBASE}/include/X11/qt3" \
			--with-extra-libs="${LOCALBASE}/lib" \
			--with-extra-includes="${LOCALBASE}/include/libpng"

PORTHOME=		${WRKDIR}

NO_REGRESS =		Yes

.include <bsd.port.mk>
