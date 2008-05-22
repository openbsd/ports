# $OpenBSD: Makefile,v 1.49 2008/05/22 14:40:12 sthen Exp $

COMMENT=	tty-based e-mail client, development version

VERSION=	1.5.18
DISTNAME=	mutt-${VERSION}
MASTER_SITES=	${MASTER_SITES_MUTT:=devel/}

WANTLIB=	z

FLAVORS=	idn sasl sidebar
FLAVOR?=

CONFIGURE_ARGS= --enable-hcache \
		--enable-smtp \
		--without-gdbm

LIB_DEPENDS=	qdbm.>=14::databases/qdbm

.if ${FLAVOR:L:Msasl}
CONFIGURE_ARGS+= --with-sasl=${LOCALBASE}
LIB_DEPENDS+=	sasl2::security/cyrus-sasl2
.endif

MUTTRCDIR=	doc/

.if ${FLAVOR:L:Msidebar}
PATCHFILES+=		patch-${VERSION}.sidebar-b.txt:1
PATCH_DIST_STRIP=	-p1
.else
SUPDISTFILES+=		patch-${VERSION}.sidebar-b.txt:1
.endif

.include <bsd.port.mk>
