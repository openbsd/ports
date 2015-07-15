# $OpenBSD: Makefile,v 1.6 2015/07/15 09:56:28 zhuk Exp $

COMMENT =		CD/DVD creator
DISTNAME =		k3b-2.0.3a
CATEGORIES =		multimedia

# bump away from KDE3 version
SHARED_LIBS =		k3blib		50.1
SHARED_LIBS +=		k3bdevice	50.1

HOMEPAGE =		http://www.k3b.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  c m pthread
WANTLIB += ICE SM X11 Xext
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcddb ${KDE4LIB}/kcmutils ${KDE4LIB}/kde3support
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kemoticons ${KDE4LIB}/kfile
WANTLIB += ${KDE4LIB}/kidletime ${KDE4LIB}/kio ${KDE4LIB}/knotifyconfig
WANTLIB += ${KDE4LIB}/kparts ${KDE4LIB}/kprintutils ${KDE4LIB}/kpty
WANTLIB += ${KDE4LIB}/kutils ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/solid
WANTLIB += FLAC FLAC++ avcodec avformat avutil dvdread mad mp3lame
WANTLIB += mpcdec samplerate soprano sndfile tag vorbis

MASTER_SITES =		${MASTER_SITE_KDE:=stable/k3b/}

MODULES =		x11/kde4 devel/gettext

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=		x11/dbus,-suid

# Optional
#			audio/sox \
#			misc/cdrdao \
#			multimedia/transcode \
#			sysutils/cdrtools \
#			sysutils/dvd+rw-tools \

LIB_DEPENDS =		audio/flac \
			audio/lame \
			audio/libmad \
			audio/libsamplerate \
			audio/libsndfile \
			audio/libvorbis \
			audio/musepack \
			audio/taglib \
			devel/libdvdread \
			graphics/ffmpeg>=20121026 \
			${MODKDE4_DEP_DIR}/libkcddb>=${MODKDE4_DEP_VERSION}

CONFIGURE_ARGS =	-DK3B_ENABLE_MUSICBRAINZ:Bool=No

WRKDIST =		${WRKDIR}/${DISTNAME:C/[^0-9]*$//}

# systemd stuff, o' really?
post-install:
	rm -R ${WRKINST}/etc/dbus-1

.include <bsd.port.mk>
