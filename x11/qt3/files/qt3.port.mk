# $OpenBSD: qt3.port.mk,v 1.2 2002/03/05 14:46:32 espie Exp $

# This fragment uses MODQT_* variables to make it easier to substitute
# qt1/qt2/qt3 in a port.
LIB_DEPENDS+=lib/qt3/qt.3::x11/qt3

MODQT_LIBDIR=	${LOCALBASE}/lib/qt3
MODQT_INCDIR=	${LOCALBASE}/include/X11/qt3
MODQT_MOC=	${LOCALBASE}/bin/moc3
MODQT_UIC=	${LOCALBASE}/bin/uic3
MODQT_CONFIGURE_ARGS=	--with-qt-includes=${MODQT_INCDIR} \
			--with-qt-libraries=${MODQT_LIBDIR}
_MODQT_SETUP=	MOC=${MODQT_MOC} UIC=${MODQT_UIC} \
		MODQT_INCDIR=${MODQT_INCDIR} \
		MODQT_LIBDIR=${MODQT_LIBDIR}

CONFIGURE_ENV+=	${_MODQT_SETUP}
MAKE_ENV+=	${_MODQT_SETUP}
MAKE_FLAGS+=	${_MODQT_SETUP}
