# $OpenBSD: Makefile,v 1.2 2010/06/23 16:23:59 espie Exp $

COMMENT =		K Desktop Environment, multimedia
DISTNAME =		kdemultimedia-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS += audiocdplugins 4.0	# .4.0
SHARED_LIBS += kcddb          4.0       # .4.0
SHARED_LIBS += kcompactdisc   4.0       # .4.0

LIB_DEPENDS +=	kdecore.>=8,kdeui,kde3support,kio,kparts,solid,khtml,kjs,kutils,phonon::x11/kde4/libs \
		FLAC::audio/flac \
		cdda_paranoia,cdda_interface::audio/cdparanoia \
		ogg::audio/libogg \
		tag::audio/taglib \
		vorbis,vorbisenc,vorbisfile::audio/libvorbis

WANTLIB += c m pthread stdc++ 
WANTLIB += Qt3Support QtDBus QtGui QtNetwork QtSvg QtXml

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common

.include <bsd.port.mk>
