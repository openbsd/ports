# $OpenBSD: Makefile,v 1.143 2021/02/05 12:25:50 ajacoutot Exp $

PORTROACH=		skipv:5.90.1

COMMENT-main=		GNOME Data Access library
COMMENT-pgsql=		PostgreSQL backend for libgda

GNOME_PROJECT=		libgda
GNOME_VERSION=		6.0.0

PKGNAME-main=		${DISTNAME}
PKGNAME-pgsql=		libgda-pgsql-${GNOME_VERSION}

EPOCH-main=		2
EPOCH-pgsql=		0

CATEGORIES=		databases

SHARED_LIBS += gda-6.0                   0.0 # 6

HOMEPAGE=		http://www.gnome-db.org/

# library: LGPLv2
# tools: GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += gio-2.0 glib-2.0 gobject-2.0

# /libgda-5.1.2_writes_to_HOME/.cache/g-ir-scanner
PORTHOME=		${WRKDIST}

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

BUILD_DEPENDS=		databases/db/v4 \
			devel/json-glib \
			devel/iso-codes \
			devel/libgee

TEST_DEPENDS=		devel/check

MULTI_PACKAGES=		-main -pgsql

WANTLIB-main += ${WANTLIB}
WANTLIB-main += gmodule-2.0 intl sqlite3 xml2

LIB_DEPENDS-main=	databases/sqlite3 \
			devel/glib2 \
			textproc/libxml

WANTLIB-pgsql += ${WANTLIB}
WANTLIB-pgsql += gda-6.0 pq

RUN_DEPENDS-pgsql=	# empty
LIB_DEPENDS-pgsql=	x11/gnome/libgda \
			databases/postgresql

.include <bsd.port.mk>
