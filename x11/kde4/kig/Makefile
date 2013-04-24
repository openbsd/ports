# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 12:04:54 zhuk Exp $

COMMENT =	KDE geometric constructions explorer
DISTNAME =	kig-${MODKDE4_VERSION}

MODULES =	lang/python

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kcmutils ${KDE4LIB}/kdeui ${KDE4LIB}/kemoticons
WANTLIB += ${KDE4LIB}/kidletime ${KDE4LIB}/kio ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/kprintutils ${KDE4LIB}/ktexteditor ${KDE4LIB}/kutils
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils
WANTLIB += boost_python soprano ${MODPY_WANTLIB}

LIB_DEPENDS =	devel/boost

# XXX
CONFIGURE_ARGS =	-DBOOST_PYTHON_INCLUDES:String=${MODPY_INCDIR} \
			-DBOOST_PYTHON_LIBS:String="-L${LOCALBASE}/lib ${MODPY_WANTLIB:C/^/-l/} -lboost_python"

post-patch:
	${SUBST_CMD} ${WRKSRC}/pykig/pykig.py

.include <bsd.port.mk>
