# $OpenBSD: gconf2.port.mk,v 1.4 2009/06/11 18:25:54 ajacoutot Exp $

MODGCONF2_LIB_DEPENDS=	gconf-2::devel/gconf2
MODGCONF2_BUILD_DEPENDS=:gconf2-*:devel/gconf2
MODGCONF2_RUN_DEPENDS=	:gconf2-*:devel/gconf2

MODGCONF2_LIBDEP?=	Yes

.if ${MODGCONF2_LIBDEP:L} == "yes"
LIB_DEPENDS+=	${MODGCONF2_LIB_DEPENDS}
.endif

# The RUN_DEPENDS entry is to ensure gconf2 is installed. This is
# necessary so that we have gconftool-2 installed on static archs.
RUN_DEPENDS+=	${MODGCONF2_RUN_DEPENDS}

BUILD_DEPENDS+=	${MODGCONF2_BUILD_DEPENDS}

.if defined(MODGCONF2_SCHEMAS_DIR)
SCHEMAS_INSTDIR=share/schemas/${MODGCONF2_SCHEMAS_DIR:L}
SUBST_VARS+=	SCHEMAS_INSTDIR
CONFIGURE_ARGS+=--with-gconf-schema-file-dir=${LOCALBASE}/${SCHEMAS_INSTDIR}
.endif

MODGCONF2_post-patch+=	ln -s /usr/bin/true ${WRKDIR}/bin/gconftool-2
