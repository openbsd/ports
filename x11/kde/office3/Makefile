# $OpenBSD: Makefile,v 1.21 2004/12/16 07:25:25 alek Exp $

COMMENT=		"office suite for KDE"

CATEGORIES=		x11 x11/kde productivity
VERSION=		3.1.4
VMEM_WARNING=		Yes
MASTER_SITES?=		${MASTER_SITE_KDE:S@$@stable/${DISTNAME}/src/@}

DISTNAME=	koffice-1.3.4

FAKE_FLAGS=	${MAKE_FLAGS} TAR=tar DESTDIR=${WRKINST}

SEPARATE_BUILD=	flavored

MODKDE_VERSION=
AUTOCONF?=	/bin/sh ${WRKDIST}/admin/cvs.sh configure
AUTOCONF_VERSION=2.58

LIB_DEPENDS=	kdecore.4,DCOP,artskde,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kjava,kparts,kspell,kabc,kjs,kresources,kutils,kwalletclient,vcard::x11/kde/libs3 \
		python2.3.0.0::lang/python/2.3 \
		art_lgpl_2.5::graphics/libart \
		wv2::converters/wv2 \
		aspell::textproc/aspell/core \
		Magick::graphics/ImageMagick \
		jbig::graphics/jbigkit

WANTLIB=	ICE SM X11 Xext Xrender artsflow artsflow_idl audiofile bz2 c \
		esd freetype glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
		gsf-1 gthread-2.0.0.0 iconv intl jasper jpeg kmedia2_idl lcms \
		m mad mcop ogg ossaudio pcre pcreposix png pthread qtmcop \
		soundserver_idl stdc++ tiff util vorbis vorbisenc vorbisfile \
		xml2 xslt z

.include <bsd.port.mk>
