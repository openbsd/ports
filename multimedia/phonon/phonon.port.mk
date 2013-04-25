# $OpenBSD: phonon.port.mk,v 1.2 2013/04/25 11:54:01 zhuk Exp $
MODPHONON_WANTLIB =	${MODKDE4_LIB_DIR}/phonon_s
MODPHONON_LIB_DEPENDS =	phonon->=4.6.0:multimedia/phonon

# If enabled (default), make sure at least one Phonon backend is
# installed prior installing affected port.
MODPHONON_PLUGIN_DEPS ?=	Yes
.if ${MODPHONON_PLUGIN_DEPS:L} == "yes"
MODPHONON_RUN_DEPENDS =	phonon-gstreamer-*|phonon-vlc-*:multimedia/phonon-backend/gstreamer
.endif

WANTLIB +=	${MODPHONON_WANTLIB}
LIB_DEPENDS +=	${MODPHONON_LIB_DEPENDS}
RUN_DEPENDS +=	${MODPHONON_RUN_DEPENDS}
