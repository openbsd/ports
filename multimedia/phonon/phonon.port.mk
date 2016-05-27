# $OpenBSD: phonon.port.mk,v 1.7 2016/05/27 02:50:05 zhuk Exp $
.if ${MODULES:Mx11/qt5} || ${MODULES:Mdevel/kf5}
MODPHONON_WANTLIB =	phonon4qt5
MODPHONON_LIB_DEPENDS =	phonon-qt5->=4.8.0:multimedia/phonon,qt5
.else
MODPHONON_WANTLIB =	${MODKDE4_LIB_DIR}/phonon_s
MODPHONON_LIB_DEPENDS =	phonon->=4.8.0:multimedia/phonon
.endif

# If enabled (default), make sure at least one Phonon backend is
# installed prior installing affected port.
MODPHONON_PLUGIN_DEPS ?=	Yes
.if ${MODPHONON_PLUGIN_DEPS:L} == "yes"
. if ${MODULES:Mx11/qt5} || ${MODULES:Mdevel/kf5}
MODPHONON_RUN_DEPENDS =	phonon-qt5-gstreamer-*:multimedia/phonon-backend/gstreamer,qt5
. else
MODPHONON_RUN_DEPENDS =	phonon-vlc-*|phonon-gstreamer-*:multimedia/phonon-backend/vlc
. endif
.endif

WANTLIB +=	${MODPHONON_WANTLIB}
LIB_DEPENDS +=	${MODPHONON_LIB_DEPENDS}
RUN_DEPENDS +=	${MODPHONON_RUN_DEPENDS}
