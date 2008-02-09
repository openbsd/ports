# $OpenBSD: Makefile,v 1.1.1.1 2008/02/09 15:39:24 espie Exp $

COMMENT =		K Desktop Environment, multimedia
DISTNAME =		kdemultimedia-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS += audiocdplugins 4.0	# .4.0
SHARED_LIBS += kcddb          4.0       # .4.0
SHARED_LIBS += kcompactdisc   4.0       # .4.0

LIB_DEPENDS +=	kdecore.>=8,kdeui,kde3support,kfile,kio,kparts,kpty,solid,khtml,kjs,ktexteditor,kutils,phonon::x11/kde4/libs \
		FLAC::audio/flac \
		cdda_paranoia,cdda_interface::audio/cdparanoia \
		ogg::audio/libogg \
		tag::audio/taglib \
		vorbis,vorbisenc,vorbisfile::audio/libvorbis

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xi Xinerama
WANTLIB += Xpm Xrandr Xrender Xtst bz2 c dbus-1 fam fontconfig
WANTLIB += freetype gif glib-2.0 gthread-2.0 iconv intl jpeg m
WANTLIB += ossaudio pcre pcreposix png pthread stdc++ streamanalyzer
WANTLIB += streams util z
WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtSvg QtXml

.include <bsd.port.mk>
