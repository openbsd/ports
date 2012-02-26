# $OpenBSD: Makefile,v 1.31 2012/02/26 15:08:07 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		people aggregation library
COMMENT-tracker=	(meta-)tracker backend for folks

GNOME_PROJECT=		folks
GNOME_VERSION=		0.6.7
API_V=			31

PKGNAME-main=		${DISTNAME}
PKGNAME-tracker=	${GNOME_PROJECT}-meta-tracker-${GNOME_VERSION}

SHARED_LIBS +=  folks-telepathy           5.0 # 29.0
SHARED_LIBS +=  folks                     5.0 # 29.0
SHARED_LIBS +=  folks-eds                 0.1 # 29.0

TRACKER_VERSION=	0.12
SUBST_VARS=		API_V TRACKER_VERSION

HOMEPAGE=		${HOMEPAGE_TP:=Folks}

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += dbus-1 dbus-glib-1 ffi gconf-2 gee gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 m pcre sqlite3

MULTI_PACKAGES=		-main

PSEUDO_FLAVORS=		no_tracker
FLAVOR ?=

WANTLIB-main += ${WANTLIB}
WANTLIB-main += asn1 c camel-1.2 com_err crypto ebook-1.2 edataserver-1.2
WANTLIB-main += gssapi krb5 ncurses nspr4 nss3 nssutil3 plc4 plds4
WANTLIB-main += pthread readline smime3 softokn3 soup-2.4 ssl3 telepathy-glib
WANTLIB-main += xml2 z

LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			databases/evolution-data-server>=3.2.0p2 \
			devel/libgee \
			net/telepathy/telepathy-glib>=0.14.3
RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS} \
			net/telepathy/telepathy-mission-control

REGRESS_DEPENDS=	${FULLPKGNAME}:${BASE_PKGPATH}

MODGNOME_TOOLS= 	goi vala

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-import-tool \
			--enable-inspect-tool
# Don't enable this yet untill it's stable enough.
CONFIGURE_ARGS+=	--enable-libsocialweb-backend=no
# Experimental bindings, but hey, without testing they'll never mature.
CONFIGURE_ARGS+=	--enable-eds-backend

.if ${FLAVOR:Mno_tracker}
CONFIGURE_ARGS +=	--disable-tracker-backend
.else
MULTI_PACKAGES +=	-tracker
SHARED_LIBS +=  folks-tracker        0.0     # 30.0
CONFIGURE_ARGS +=	--enable-tracker-backend
RUN_DEPENDS-tracker=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-tracker=	${MODGETTEXT_LIB_DEPENDS} \
			${BASE_PKGPATH},-main \
			x11/gnome/tracker
WANTLIB-tracker += ${WANTLIB}
WANTLIB-tracker += lib/tracker-${TRACKER_VERSION}/tracker-common
WANTLIB-tracker += lib/tracker-${TRACKER_VERSION}/tracker-data
WANTLIB-tracker += e2fs-uuid folks icui18n icuuc kvm tracker-sparql-0.12
WANTLIB-tracker += z
.endif

.include <bsd.port.mk>
