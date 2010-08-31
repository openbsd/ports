# $OpenBSD: Makefile,v 1.4 2010/08/31 08:22:05 jasper Exp $

COMMENT =		K Desktop Environment, multimedia
DISTNAME =		kdemultimedia-${VERSION}

SHARED_LIBS += audiocdplugins 4.0	# .4.0
SHARED_LIBS += kcddb          4.0       # .4.0
SHARED_LIBS += kcompactdisc   4.0       # .4.0

LIB_DEPENDS +=	::x11/kde4/libs \
		::audio/flac \
		::audio/cdparanoia \
		::audio/libogg \
		::audio/taglib \
		::audio/libvorbis

WANTLIB += FLAC c cdda_interface cdda_paranoia kde3support kdecore.>=8 kdeui \
	khtml kio kjs kparts kutils lib/qt4/Qt3Support lib/qt4/QtDBus \
	lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg lib/qt4/QtXml m ogg \
	phonon.>=5 pthread solid stdc++ tag vorbis vorbisenc vorbisfile

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
