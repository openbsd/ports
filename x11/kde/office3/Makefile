# $OpenBSD: Makefile,v 1.26 2005/10/17 15:15:40 espie Exp $

COMMENT=		"office suite for KDE"

CATEGORIES=		x11 x11/kde productivity
VMEM_WARNING=		Yes
MASTER_SITES?=		${MASTER_SITE_KDE:S@$@stable/koffice-1.4.2/src/@}

DISTNAME=	koffice-1.4.2
PKGNAME=	${DISTNAME}

FLAVORS=debug
FAKE_FLAGS=	${MAKE_FLAGS} TAR=tar DESTDIR=${WRKINST}

SEPARATE_BUILD=	flavored

MODKDE_VERSION=	3.4
AUTOCONF?=	/bin/sh ${WRKDIST}/admin/cvs.sh configure
AUTOCONF_VERSION=2.59

MODKDE_LIBTOOL=Yes
LIB_DEPENDS=	kdecore.4,DCOP,artskde,kdefx,kdeprint,kdesu,kdeui,khtml,kio,kparts,kspell,kabc,kjs,kresources,ktexteditor,kutils,kwalletclient,vcard,kspell2,knewstuff,kmdi::x11/kde/libs3 \
		python2.3.0.0:python-2.3.*:lang/python/2.3 \
		art_lgpl_2.5::graphics/libart \
		wv2::converters/wv2 \
		Magick::graphics/ImageMagick \
		jbig::graphics/jbigkit \
		mysqlclient::databases/mysql


WANTLIB=	ICE SM X11 Xext Xrender artsflow artsflow_idl audiofile bz2 c \
		esd freetype glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
		gsf-1 gthread-2.0.0.0 iconv intl jasper jpeg kmedia2_idl lcms \
		m mad mcop ogg ossaudio pcre pcreposix png pthread qtmcop \
		soundserver_idl stdc++ tiff util vorbis vorbisenc vorbisfile \
		xml2 xslt z Xt termcap Xi fontconfig crypto readline ssl

CONFIGURE_ARGS+= --with-pgsqlincdir=${LOCALBASE}/include/postgresql
LIB_DEPENDS+=	pqxx::databases/libpqxx \
		pq::databases/postgresql
.include <bsd.port.mk>
