# $OpenBSD: gconf2.port.mk,v 1.8 2014/07/09 16:49:41 ajacoutot Exp $

MODGCONF2_WANTLIB =	gconf-2
MODGCONF2_LIB_DEPENDS =	devel/gconf2
MODGCONF2_BUILD_DEPENDS =devel/gconf2
MODGCONF2_RUN_DEPENDS =	devel/gconf2

MODGCONF2_LIBDEP ?=	Yes

.if ${MODGCONF2_LIBDEP:L} == "yes"
LIB_DEPENDS +=	${MODGCONF2_LIB_DEPENDS}
WANTLIB +=	${MODGCONF2_WANTLIB}
.endif

# The RUN_DEPENDS entry is to ensure gconf2 is installed. This is
# necessary so that we have gconftool-2 installed on static archs.
RUN_DEPENDS +=		${MODGCONF2_RUN_DEPENDS}

BUILD_DEPENDS +=	${MODGCONF2_BUILD_DEPENDS}

.if defined(MODGCONF2_SCHEMAS_DIR)
SCHEMAS_INSTDIR =	share/schemas/${MODGCONF2_SCHEMAS_DIR:L}
SUBST_VARS +=		SCHEMAS_INSTDIR
.   if ${CONFIGURE_STYLE:Mgnu} || ${CONFIGURE_STYLE:Msimple}
CONFIGURE_ARGS +=	--with-gconf-schema-file-dir=${LOCALBASE}/${SCHEMAS_INSTDIR}
.   endif
.endif

MODGCONF2_post-patch +=	ln -s /usr/bin/true ${WRKDIR}/bin/gconftool-2
