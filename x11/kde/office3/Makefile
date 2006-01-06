# $OpenBSD: Makefile,v 1.27 2006/01/06 12:07:26 espie Exp $

COMMENT=		"office suite for KDE"

CATEGORIES=		x11 x11/kde productivity
VMEM_WARNING=		Yes
MASTER_SITES?=		${MASTER_SITE_KDE:S@$@stable/koffice-1.4.2/src/@}

DISTNAME=	koffice-1.4.2
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	karbonbase		2.0 \
		kchartcommon		2.0 \
		kdchart			0.0 \
		kexicore		0.8 \
		kexidatatable		0.8 \
		kexidb			0.0 \
		kexidbparser		0.8 \
		kexiextendedwidgets	0.8 \
		kexiformutils		0.8 \
		kexiguiutils		0.8 \
		keximain		0.8 \
		keximigrate		0.8 \
		kexipropertyeditor	0.8 \
		kexirelationsview	0.8 \
		kexisql2		2.8 \
		kexisql3		3.0 \
		kformdesigner		0.8 \
		kformulalib		3.0 \
		kiviocommon		0.0 \
		kochart			1.0 \
		kofficecore		2.0 \
		kofficeui		2.0 \
		kopainter		1.0 \
		koscript		2.0 \
		kotext			2.0 \
		kowmf			1.0 \
		kritacommon		1.0 \
		kspreadcommon		0.0 \
		kstore			2.0 \
		kugarlib		1.2 \
		kwmailmerge_interface	4.0 \
		kwmf			2.0 \
		kwordexportfilters	1.1

FLAVORS=debug
FAKE_FLAGS=	${MAKE_FLAGS} TAR=tar DESTDIR=${WRKINST}

SEPARATE_BUILD=	flavored

MODKDE_VERSION=	3.4
AUTOCONF?=	/bin/sh ${WRKDIST}/admin/cvs.sh configure
AUTOCONF_VERSION=2.59

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

USE_LIBTOOL=Yes
LIBTOOL_FLAGS=--tag=disable-static
.include <bsd.port.mk>
