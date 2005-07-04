# $OpenBSD: qt4.port.mk,v 1.1.1.1 2005/07/04 11:10:13 espie Exp $

MODULES+=	gcc3
MODGCC3_ARCHES+=sparc64
MODGCC3_LANGS+=	c++

# This fragment uses MODQT_* variables to make it easier to substitute
# qt1/qt2/qt3 in a port.
MODQT_LIBDIR=	${LOCALBASE}/lib/qt4
MODQT_INCDIR=	${LOCALBASE}/include/X11/qt4
MODQT_OVERRIDE_UIC?=Yes
MODQT_MT?=Yes
MODQT_CONFIGURE_ARGS=	--with-qt-includes=${MODQT_INCDIR} \
			--with-qt-libraries=${MODQT_LIBDIR}
_MODQT_SETUP=	MOC=${MODQT_MOC} \
		MODQT_INCDIR=${MODQT_INCDIR} \
		MODQT_LIBDIR=${MODQT_LIBDIR}
.if ${MODQT_OVERRIDE_UIC:L} == "yes"
_MODQT_SETUP+=	UIC=${MODQT_UIC}
.endif

LIB_DEPENDS+=lib/qt4/QtCore::x11/qt4
# may be needed to find plugins
MODQT_MOC=	${LOCALBASE}/bin/moc4
MODQT_UIC=	${LOCALBASE}/bin/uic4
MODQT_QTDIR=	${LOCALBASE}/lib/qt4

CONFIGURE_ENV+=	${_MODQT_SETUP}
MAKE_ENV+=	${_MODQT_SETUP}
MAKE_FLAGS+=	${_MODQT_SETUP}
