# $OpenBSD: qt.port.mk,v 1.1 2001/08/27 09:08:57 espie Exp $

# This fragment uses MODQT_* variables to make it easier to substitute
# qt1/qt2/qt3 in a port.
LIB_DEPENDS+=qt.1::x11/qt

MODQT_LIBDIR=	${LOCALBASE}/lib/qt
MODQT_INCDIR=	${LOCALBASE}/include/X11/qt
MODQT_MOC=	${LOCALBASE}/bin/moc
MODQT_CONFIGURE_ARGS=--with-qt-includes=${MODQT_INCDIR}
MODQT_CONFIGURE_ARGS+=--with-qt-libraries=${MODQT_LIBDIR}

CONFIGURE_ENV+=	MOC=${MODQT_MOC}
MAKE_ENV+=	MOC=${MODQT_MOC}
MAKE_FLAGS+=	MOC=${MODQT_MOC}
