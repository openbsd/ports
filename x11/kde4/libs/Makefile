# $OpenBSD: Makefile,v 1.19 2013/02/03 13:21:42 zhuk Exp $

COMMENT =		K Desktop Environment, libraries
DISTNAME =		kdelibs-${VERSION}

SHARED_LIBS +=	kde3support          0.0      # .4.0
SHARED_LIBS +=	kdecore              8.0      # .5.0
SHARED_LIBS +=	kdefakes             8.0      # .5.0
SHARED_LIBS +=	kdesu                8.0      # .5.0
SHARED_LIBS +=	kdeui                9.0      # .5.0
SHARED_LIBS +=	kdnssd               3.0      # .2.0
SHARED_LIBS +=	khtml                8.0      # .5.0
SHARED_LIBS +=	kimproxy             2.0      # .4.0
SHARED_LIBS +=	kio                  8.0      # .5.0
SHARED_LIBS +=	kjs                  6.0      # .2.0
SHARED_LIBS +=	kjsembed             3.0      # .4.0
SHARED_LIBS +=	kmediaplayer         2.0      # .4.0
SHARED_LIBS +=	knotifyconfig        0.0      # .4.0
SHARED_LIBS +=	kntlm                2.0      # .1.0
SHARED_LIBS +=	kparts               5.0      # .4.0
SHARED_LIBS +=	krosscore            0.0      # .4.0
SHARED_LIBS +=	ktexteditor          2.0      # .4.0
SHARED_LIBS +=	kunittest            3.0      # .4.0
SHARED_LIBS +=	kutils               5.0      # .2.0
SHARED_LIBS +=	solid                0.0      # .4.0
SHARED_LIBS +=	threadweaver         0.0      # .4.0
SHARED_LIBS +=	kfile                0.0      # .4.0
SHARED_LIBS +=	knewstuff2           0.0      # .4.0
SHARED_LIBS +=	krossui              0.0      # .4.0
SHARED_LIBS +=  kpty                 0.0      # .4.0
SHARED_LIBS +=  nepomuk              0.0      # .0.0

SHARED_LIBS += 	krossqtsplugin 		0.0
SHARED_LIBS +=  kjsapi 			0.0
SHARED_LIBS +=	kdewebkit		0.0
SHARED_LIBS +=	knewstuff3		0.0
SHARED_LIBS +=	kunitconversion		0.0
SHARED_LIBS +=	plasma			0.0
SHARED_LIBS +=	nepomukquery         0.0      # .4.4


BUILD_DEPENDS += misc/shared-mime-info \
		devel/automoc \
		misc/shared-desktop-ontologies

RUN_DEPENDS +=  misc/shared-mime-info \
		misc/shared-desktop-ontologies \
		x11/kde4/oxygen-icons

LIB_DEPENDS +=	graphics/openexr \
		graphics/libungif \
		graphics/jasper \
		archivers/bzip2 \
		textproc/aspell/core \
		textproc/enchant \
		textproc/libxslt \
		devel/pcre \
		databases/strigi \
		x11/kde4/attica \
		archivers/xz \
		databases/soprano \
		multimedia/phonon \
		security/qca2

# we don't have krb5-config
CONFIGURE_ARGS += -DGSSAPI_LIBS:STRING="-lgssapi -lkrb5 -lasn1 -lcom_err"
CONFIGURE_ARGS += -DGSSAPI_INCS:STRING="/usr/include/kerberosV"
CONFIGURE_ARGS += -DGSSAPI_FLAVOR:STRING="HEIMDAL"
CONFIGURE_ARGS += -DGSSAPI_FOUND:BOOL=TRUE

CONFIGURE_ARGS +=	-DKDE4_INCLUDE_INSTALL_DIR:String=${LOCALBASE}/include
CONFIGURE_ARGS +=	-DKDE4_LIB_INSTALL_DIR:String=${LOCALBASE}/lib
CONFIGURE_ARGS +=	-DKDESU_USE_SUDO_DEFAULT:BOOL=TRUE
USE_GROFF =	Yes


post-extract:
	@if pkg_info -e 'kdelibs-<4'; then \
		echo "Error: don't try to build with kde3 around"; \
		exit 1; \
	fi

WANTLIB += GL Half ICE Iex IlmImf IlmThread Imath SM X11 Xau Xcursor Xdmcp \
	Xext Xfixes Xft Xpm Xrender Xss Xtst asn1 aspell attica bz2 c com_err \
	enchant fam gif gssapi intl jasper jpeg krb5 lib/qt4/Qt3Support \
	lib/qt4/QtDBus lib/qt4/QtDesigner lib/qt4/QtGui lib/qt4/QtNetwork \
	lib/qt4/QtOpenGL lib/qt4/QtScript lib/qt4/QtSvg lib/qt4/QtWebKit \
	lib/qt4/QtXml lzma m pcre pcreposix phonon png pthread qca>=3.0 \
	soprano sopranoclient stdc++ streamanalyzer streams util xml2 xslt z


.include <bsd.port.mk>
