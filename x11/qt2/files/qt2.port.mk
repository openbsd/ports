# $OpenBSD: qt2.port.mk,v 1.1 2001/08/27 08:53:53 espie Exp $

# This fragment uses MODQT_* variables to make it easier to substitute
# qt1/qt2/qt3 in a port.
LIB_DEPENDS+=qt.2::x11/qt2

MODQT_LIBDIR=	${LOCALBASE}/lib/qt2
MODQT_INCDIR=	${LOCALBASE}/include/X11/qt2
MODQT_MOC=	${LOCALBASE}/bin/moc2
MODQT_CONFIGURE_ARGS=--with-qt-includes=${MODQT_INCDIR}
MODQT_CONFIGURE_ARGS+=--with-qt-libraries=${MODQT_LIBDIR}

CONFIGURE_ENV+=	MOC=${MODQT_MOC}
MAKE_ENV+=	MOC=${MODQT_MOC}
MAKE_FLAGS+=	MOC=${MODQT_MOC}
