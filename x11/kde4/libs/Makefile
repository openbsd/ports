# $OpenBSD: Makefile,v 1.13 2010/06/20 16:20:16 espie Exp $

COMMENT =		K Desktop Environment, libraries
DISTNAME =		kdelibs-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS +=	kde3support          0.0      # .4.0
SHARED_LIBS +=	kdecore              8.0      # .5.0
SHARED_LIBS +=	kdefakes             8.0      # .5.0
SHARED_LIBS +=	kdesu                8.0      # .5.0
SHARED_LIBS +=	kdeui                8.0      # .5.0
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


BUILD_DEPENDS += ::misc/shared-mime-info \
		::x11/kde4/automoc \
		::misc/shared-desktop-ontologies

RUN_DEPENDS +=  ::misc/shared-mime-info \
		::misc/shared-desktop-ontologies \
		::x11/kde4/oxygen-icons

LIB_DEPENDS +=	Half,Iex,IlmImf,Imath,IlmThread::graphics/openexr \
		gif::graphics/libungif \
		jasper::graphics/jasper \
		bz2::archivers/bzip2 \
		aspell::textproc/aspell/core \
		enchant::textproc/enchant \
		xslt::textproc/libxslt \
		pcre,pcreposix::devel/pcre \
		streams,streamanalyzer::databases/strigi \
		attica::x11/kde4/attica \
		lzma::archivers/xz \
		soprano,sopranoclient::databases/soprano \
		phonon::multimedia/phonon

# we don't have krb5-config
CONFIGURE_ARGS += -DGSSAPI_LIBS:STRING="-lgssapi -lkrb5 -lasn1 -lcom_err"
CONFIGURE_ARGS += -DGSSAPI_INCS:STRING="/usr/include/kerberosV"
CONFIGURE_ARGS += -DGSSAPI_FLAVOR:STRING="HEIMDAL"
CONFIGURE_ARGS += -DGSSAPI_FOUND:BOOL=TRUE

CONFIGURE_ARGS +=	-DKDE4_INCLUDE_INSTALL_DIR:String=${LOCALBASE}/include
CONFIGURE_ARGS +=	-DKDE4_LIB_INSTALL_DIR:String=${LOCALBASE}/lib


post-extract:
	@if pkg_info -e 'kdelibs-<4'; then \
		echo "Error: don't try to build with kde3 around"; \
		exit 1; \
	fi

WANTLIB += ICE SM X11 Xau Xcursor Xdmcp Xext Xft Xpm
WANTLIB += Xrender Xfixes Xtst c jpeg m png
WANTLIB += pthread stdc++ util z
WANTLIB += Qt3Support QtDBus QtDesigner QtGui QtSvg QtXml
WANTLIB += QtNetwork xml2 intl
WANTLIB += asn1 com_err gssapi krb5
WANTLIB += QtOpenGL QtScript QtWebKit
WANTLIB += Xss GL fam


.include <bsd.port.mk>
