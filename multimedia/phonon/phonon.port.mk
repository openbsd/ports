# $OpenBSD: phonon.port.mk,v 1.10 2020/06/13 16:22:52 rsadowski Exp $
.if ${MODULES:Mx11/qt5} || ${MODULES:Mdevel/kf5}
MODPHONON_WANTLIB =	phonon4qt5
MODPHONON_LIB_DEPENDS =	phonon-qt5->=4.10.1:multimedia/phonon-qt5
.endif

# If enabled (default), make sure at least one Phonon backend is
# installed prior installing affected port.
MODPHONON_PLUGIN_DEPS ?=	Yes
.if ${MODPHONON_PLUGIN_DEPS:L} == "yes"
. if ${MODULES:Mx11/qt5} || ${MODULES:Mdevel/kf5}
MODPHONON_RUN_DEPENDS =	phonon-qt5-gstreamer-*:multimedia/phonon-backend/gstreamer,qt5
. endif
.endif

WANTLIB +=	${MODPHONON_WANTLIB}
LIB_DEPENDS +=	${MODPHONON_LIB_DEPENDS}
RUN_DEPENDS +=	${MODPHONON_RUN_DEPENDS}
