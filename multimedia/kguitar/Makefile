# $OpenBSD: Makefile,v 1.11 2013/10/05 07:34:35 espie Exp $

COMMENT =		guitar tab editor

DISTNAME =		kguitar-0.5.1
REVISION=		5

CATEGORIES =		multimedia kde

HOMEPAGE =		http://kguitar.sourceforge.net/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+; for MusicXML copyright see licenseMusicXML.html
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  ICE SM X11 Xext Xfixes Xrender Xt art_lgpl_2 c expat
WANTLIB += fontconfig freetype idn jpeg m png pthread stdc++ util
WANTLIB += xcb z
WANTLIB += ${KDE}/DCOP ${KDE}/kdecore ${KDE}/kdefx ${KDE}/kdeprint
WANTLIB += ${KDE}/kdesu ${KDE}/kdeui ${KDE}/kio ${KDE}/kparts
WANTLIB += ${KDE}/kwalletclient

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=kguitar/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext \
			x11/kde
LIB_DEPENDS =		x11/kde/libs3
RUN_DEPENDS =		x11/gtk+2,-guic

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-midisupport \
			--with-qt-dir="${LOCALBASE}" \
			--with-qt-libraries="${LOCALBASE}/lib/qt3" \
			--with-qt-includes="${LOCALBASE}/include/X11/qt3" \
			--with-extra-libs="${LOCALBASE}/lib" \
			--with-extra-includes="${LOCALBASE}/include"

CONFIGURE_ENV =		KDEDIR=${LOCALBASE}

PORTHOME=		${WRKDIR}

NO_TEST =		Yes

.include <bsd.port.mk>
