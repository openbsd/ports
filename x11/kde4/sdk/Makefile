# $OpenBSD: Makefile,v 1.14 2013/10/15 07:19:36 zhuk Exp $

COMMENT =	KDE software development kit
DISTNAME =	kdesdk-${MODKDE4_VERSION}
REVISION =	2

SHARED_LIBS =	komparedialogpages	50.0 # 4.7
SHARED_LIBS +=	komparediff2		50.0 # 4.7
SHARED_LIBS +=	kompareinterface	50.0 # 4.7
SHARED_LIBS +=  kasten2controllers        50.0 # 0.2
SHARED_LIBS +=  kasten2core               50.0 # 0.2
SHARED_LIBS +=  kasten2gui                50.0 # 0.2
SHARED_LIBS +=  kasten2okteta1controllers 50.0 # 0.2
SHARED_LIBS +=  kasten2okteta1core        50.0 # 0.2
SHARED_LIBS +=  kasten2okteta1gui         50.0 # 0.2
SHARED_LIBS +=  okteta1core               50.0 # 0.8
SHARED_LIBS +=  okteta1gui                50.0 # 0.8
SHARED_LIBS +=  kdeinit4_cervisia         50.0
SHARED_LIBS +=  kdeinit4_cvsaskpass       50.0
SHARED_LIBS +=  kdeinit4_cvsservice       50.0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/Qt3Support lib/qt4/QtDBus lib/qt4/QtDesigner
WANTLIB += lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript
WANTLIB += lib/qt4/QtScriptTools lib/qt4/QtSql lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kde3support ${KDE4LIB}/kdesu
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kfile ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/knewstuff3 ${KDE4LIB}/konq ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/krosscore ${KDE4LIB}/krossui ${KDE4LIB}/ktexteditor
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += ${KDE4LIB}/solid ${KDE4LIB}/threadweaver
WANTLIB += apr-1 hunspell-1.3 svn_client-1 svn_delta-1 svn_fs-1
WANTLIB += svn_ra-1 svn_subr-1 xml2 xslt
WANTLIB += gettextpo qca2 soprano streamanalyzer streams

MODULES =		lang/python lang/ruby perl
MODKDE4_USE =		pim
MODPY_BUILDDEP =	No
MODRUBY_BUILDDEP =	No
MODRUBY_REV =		1.8

# For building KAppTemplate with weird file names
USE_GMAKE =	Yes

BUILD_DEPENDS =	devel/boost

RUN_DEPENDS =	archivers/bzip2 \
		devel/desktop-file-utils \
		misc/findutils \
		misc/shared-mime-info \
		sysutils/ggrep \
		x11/gtk+2,-guic

# for vimdiff script
RUN_DEPENDS +=	editors/vim

# need --label, -C and --exclude options, cannot be replaced by pax(1)
BUILD_DEPENDS +=archivers/gtar
RUN_DEPENDS +=	archivers/gtar

LIB_DEPENDS =	databases/strigi \
	 	devel/subversion \
		security/qca2 \
		textproc/libxslt \
		textproc/libxml \
		textproc/hunspell \
		${MODKDE4_DEP_DIR}/baseapps>=${MODKDE4_DEP_VERSION}

# We have only pre-compiled Antlr3, and poxml wants
# C runtime from Antlr2, which is not easy to port
CONFIGURE_ARGS =	-DWITH_Antlr2:Bool=FALSE

SUBST_FILES =	kde-dev-scripts/colorsvn \
		kde-dev-scripts/svn2log.sh

MODRUBY_ADJ_FILES =	\
	create_tarball.rb \
	generate_findpackage_file \
	gencmake \
	am2cmake \
	replaceinallfiles

MODPY_ADJ_FILES =	\
	kcachegrind/converters/hotshot2calltree \
	kde-dev-scripts/reviewboarddiff \
	kde-dev-scripts/kde_generate_export_header \
	kde-dev-scripts/zonetab2pot.py \
	kde-dev-scripts/kdelnk2desktop.py \
	kde-dev-scripts/qt4/adapt-to-icon-spec.py \
	kde-dev-scripts/grantlee_strings_extractor.py \
	kde-dev-scripts/kf5/resolve_kuit.py \
	kde-dev-scripts/kde-systemsettings-tree.py \
	kde-dev-scripts/rename_source_files \
	kde-dev-scripts/svn2log.py \
	lokalize/scripts/xliffmerge.py

MODPERL_ADJ_FILES =	\
	kde-dev-scripts/fixheaders \
	kde-dev-scripts/extractrc \
	kde-dev-scripts/includemocs \
	kde-dev-scripts/colorsvn \
	kde-dev-scripts/colorcvs \
	kde-dev-scripts/cvsblame \
	kde-dev-scripts/cvscheck \
	kde-dev-scripts/rc2kcfgxt.pl \
	kde-dev-scripts/kdemangen.pl \
	kde-dev-scripts/noncvslist \
	kde-dev-scripts/svn-clean \
	kde-dev-scripts/extractattr \
	kde-dev-scripts/kde-spellcheck.pl \
	kde-dev-scripts/generate_string_table.pl \
	kde-dev-scripts/cvs-clean \
	kde-dev-scripts/svnlastchange \
	kde-dev-scripts/extend_dmalloc \
	kde-dev-scripts/cvslastchange \

pre-configure:
	cd ${WRKSRC} && ${SUBST_CMD} ${SUBST_FILES}

.include <bsd.port.mk>
