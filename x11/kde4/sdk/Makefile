# $OpenBSD: Makefile,v 1.5 2010/10/19 08:13:58 espie Exp $

COMMENT = 		K Desktop Environment, developer extensions
DISTNAME =		kdesdk-${VERSION}
USE_GROFF =	Yes

SHARED_LIBS += antlr                 0.0 # .4.0(version: 4.0)
SHARED_LIBS += kateinterfaces        0.0 # .4.0
SHARED_LIBS += kompareinterface      0.0 # .4.0
SHARED_LIBS += komparedialogpages	0.0 # .4.4
SHARED_LIBS +=	komparediff2		0.0 # .4.4
SHARED_LIBS +=	ktexteditor_codesnippets_core	0.0	# .4.4

LIB_DEPENDS +=	::x11/kde4/libs \
		::x11/kde4/pimlibs \
		::devel/subversion \
		::textproc/hunspell

WANTLIB += apr-1 c hunspell-1.2 kabc.>=5 kcal kde3support kdecore.>=8 kdesu \
	kdeui kfile khtml kio kjs knewstuff2 knewstuff3 kparts kresources \
	krosscore krossui ktexteditor kutils lib/qt4/Qt3Support lib/qt4/QtDBus \
	lib/qt4/QtDesigner lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtScript \
	lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml m plasma pthread stdc++ \
	streamanalyzer streams svn_client-1 svn_delta-1 svn_fs-1 svn_ra-1 \
	svn_subr-1 threadweaver xml2 xslt

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common


CONFIGURE_ARGS += -DBUILD_kmtrace:BOOL=false
.include <bsd.port.mk>
