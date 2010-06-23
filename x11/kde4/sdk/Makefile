# $OpenBSD: Makefile,v 1.2 2010/06/23 14:53:01 espie Exp $

COMMENT = 		K Desktop Environment, developer extensions
DISTNAME =		kdesdk-${VERSION}
PKGNAME =		${DISTNAME}

SHARED_LIBS += antlr                 0.0 # .4.0(version: 4.0)
SHARED_LIBS += kateinterfaces        0.0 # .4.0
SHARED_LIBS += kompareinterface      0.0 # .4.0
SHARED_LIBS += komparedialogpages	0.0 # .4.4
SHARED_LIBS +=	komparediff2		0.0 # .4.4
SHARED_LIBS +=	ktexteditor_codesnippets_core	0.0	# .4.4

LIB_DEPENDS +=	kdecore.>=8,kde3support,kdesu,kdeui,kfile,khtml,kio,kjs,knewstuff2,kparts,threadweaver,ktexteditor,kutils,knewstuff3,krosscore,krossui,plasma::x11/kde4/libs \
		kabc.>=5,kcal,kresources::x11/kde4/pimlibs \
		svn_client-1,svn_ra-1,svn_subr-1,svn_delta-1,svn_fs-1::devel/subversion \
		hunspell-1.2::textproc/hunspell

WANTLIB += Qt3Support QtDBus QtDesigner QtGui QtNetwork QtSvg QtXml
WANTLIB += QtScript QtSql
WANTLIB += c
WANTLIB += m
WANTLIB += pthread stdc++
WANTLIB += streamanalyzer streams xml2 xslt
WANTLIB += apr-1

# these come from libs in real case
pre-install:
	mkdir -p ${PREFIX}/share/doc/HTML/en/common


CONFIGURE_ARGS += -DBUILD_kmtrace:BOOL=false
.include <bsd.port.mk>
