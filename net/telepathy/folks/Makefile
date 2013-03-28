# $OpenBSD: Makefile,v 1.50 2013/03/28 19:57:46 jasper Exp $

COMMENT-main=		people aggregation library
COMMENT-tracker=	(meta-)tracker backend for folks

GNOME_PROJECT=		folks
GNOME_VERSION=		0.8.0
# MODULE_VERSION in config.h
API_V=			37

PKGNAME-main=		${DISTNAME}
PKGNAME-tracker=	${GNOME_PROJECT}-meta-tracker-${GNOME_VERSION}

REVISION-main=		2
REVISION-tracker=	1

SHARED_LIBS +=  folks-telepathy           5.0 # 37.0
SHARED_LIBS +=  folks                     5.1 # 37.0
SHARED_LIBS +=  folks-eds                 0.1 # 37.0
SHARED_LIBS +=  folks-libsocialweb        0.0 # 37.0
SHARED_LIBS +=  folks-tracker             0.0 # 37.0

TRACKER_VERSION=	0.14
SUBST_VARS=		API_V TRACKER_VERSION

HOMEPAGE=		${HOMEPAGE_TP:=Folks}

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

WANTLIB += ffi gee gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre sqlite3

MULTI_PACKAGES=		-main -tracker

WANTLIB-main += ${WANTLIB}
WANTLIB-main += asn1 c camel-1.2 com_err crypto ebook-1.2 edataserver-1.2
WANTLIB-main += gssapi krb5 ncurses nspr4 nss3 socialweb-client plc4 plds4
WANTLIB-main += pthread readline smime3 softokn3 soup-2.4 ssl3 telepathy-glib
WANTLIB-main += xml2 z gck-1 gcr-base-3 gcrypt gpg-error gnome-keyring
WANTLIB-main += nssutil3 p11-kit zeitgeist-2.0 dbus-1 dbus-glib-1

LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			databases/evolution-data-server>=3.6.0p3 \
			devel/libgee06 \
			net/telepathy/telepathy-glib>=0.15.5 \
			net/libsocialweb \
			productivity/zeitgeist
RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS} \
			net/telepathy/telepathy-mission-control

WANTLIB-tracker += ${WANTLIB}
WANTLIB-tracker += lib/tracker-${TRACKER_VERSION}/tracker-common
WANTLIB-tracker += lib/tracker-${TRACKER_VERSION}/tracker-data
WANTLIB-tracker += e2fs-uuid folks kvm tracker-sparql-${TRACKER_VERSION}
WANTLIB-tracker += z pthread icui18n icuuc

RUN_DEPENDS-tracker=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-tracker=	${MODGETTEXT_LIB_DEPENDS} \
			${BASE_PKGPATH},-main \
			x11/gnome/tracker>=0.14.0

TEST_DEPENDS=	${FULLPKGNAME}:${BASE_PKGPATH}

MODGNOME_TOOLS= 	goi vala

CONFIGURE_ARGS+=	--enable-import-tool \
			--enable-inspect-tool \
			--enable-tracker-backend \
			--enable-libsocialweb-backend \
			--enable-eds-backend
post-install:
	rm ${PREFIX}/lib/folks/${API_V}/backends/*/*.{a,la}

.include <bsd.port.mk>
