# $OpenBSD: phonon.port.mk,v 1.3 2014/07/10 19:50:25 zhuk Exp $
MODPHONON_WANTLIB =	${MODKDE4_LIB_DIR}/phonon_s
MODPHONON_LIB_DEPENDS =	phonon->=4.7.0:multimedia/phonon

# If enabled (default), make sure at least one Phonon backend is
# installed prior installing affected port.
MODPHONON_PLUGIN_DEPS ?=	Yes
.if ${MODPHONON_PLUGIN_DEPS:L} == "yes"
MODPHONON_RUN_DEPENDS =	phonon-vlc-*|phonon-vlc-*:multimedia/phonon-backend/vlc
.endif

WANTLIB +=	${MODPHONON_WANTLIB}
LIB_DEPENDS +=	${MODPHONON_LIB_DEPENDS}
RUN_DEPENDS +=	${MODPHONON_RUN_DEPENDS}
