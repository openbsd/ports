# $OpenBSD: qt3.port.mk,v 1.6 2003/01/06 06:22:53 espie Exp $

MODULES+=	gcc3
MODGCC3_ARCHES+=sparc64
MODGCC3_LANGS+=	c++

# This fragment uses MODQT_* variables to make it easier to substitute
# qt1/qt2/qt3 in a port.
MODQT_LIBDIR=	${LOCALBASE}/lib/qt3
MODQT_INCDIR=	${LOCALBASE}/include/X11/qt3
MODQT_OVERRIDE_UIC?=Yes
MODQT_MT?=No
MODQT_CONFIGURE_ARGS=	--with-qt-includes=${MODQT_INCDIR} \
			--with-qt-libraries=${MODQT_LIBDIR}
_MODQT_SETUP=	MOC=${MODQT_MOC} \
		MODQT_INCDIR=${MODQT_INCDIR} \
		MODQT_LIBDIR=${MODQT_LIBDIR}
.if ${MODQT_OVERRIDE_UIC:L} == "yes"
_MODQT_SETUP+=	UIC=${MODQT_UIC}
.endif

.if ${MODQT_MT:L} == "yes"
LIB_DEPENDS+=lib/qt3/qt-mt.3::x11/qt3,mt
# includes are now handled by a subpackage
# may be needed to find plugins
MODQT_MOC=	${LOCALBASE}/bin/moc3-mt
MODQT_UIC=	${LOCALBASE}/bin/uic3-mt
.else
LIB_DEPENDS+=lib/qt3/qt.3::x11/qt3
MODQT_MOC=	${LOCALBASE}/bin/moc3
MODQT_UIC=	${LOCALBASE}/bin/uic3
.endif

CONFIGURE_ENV+=	${_MODQT_SETUP}
MAKE_ENV+=	${_MODQT_SETUP}
MAKE_FLAGS+=	${_MODQT_SETUP}
