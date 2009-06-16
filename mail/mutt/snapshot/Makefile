# $OpenBSD: Makefile,v 1.53 2009/06/16 09:37:19 sthen Exp $

COMMENT=	tty-based e-mail client, development version

VERSION=	1.5.20
DISTNAME=	mutt-${VERSION}
MASTER_SITES=	${MASTER_SITES_MUTT:=devel/}

WANTLIB=	z

FLAVORS=	idn sasl sidebar
FLAVOR?=

# should be 2.63
AUTOCONF_VERSION= 2.62
CONFIGURE_ARGS= --enable-hcache \
		--enable-smtp \
		--without-gdbm

LIB_DEPENDS=	qdbm.>=14::databases/qdbm

.if ${FLAVOR:L:Msasl}
CONFIGURE_ARGS+= --with-sasl=${LOCALBASE}
LIB_DEPENDS+=	sasl2::security/cyrus-sasl2
.endif

MUTTRCDIR=	doc/

DIST_COMPRESSED=compressed-1.5.20.diff.gz:2
DIST_SIDEBAR=	sidebar-1.5.20.diff.gz:2

.if ${FLAVOR:L:Msidebar}
PATCHFILES+=		${DIST_SIDEBAR}
PATCH_DIST_STRIP=	-p1
.else
SUPDISTFILES+=		${DIST_SIDEBAR}
.endif

.include <bsd.port.mk>
