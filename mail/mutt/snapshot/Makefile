# $OpenBSD: Makefile,v 1.82 2014/03/12 22:33:01 sthen Exp $

COMMENT=	tty-based e-mail client, development version

DISTNAME=	mutt-1.5.23
EPOCH=		0
# http://prefix.gentooexperimental.org:8000/mutt-patches is useful
MASTER_SITES=	${MASTER_SITES_MUTT} \
		${MASTER_SITE_SOURCEFORGE:=mutt/} \
		${MASTER_SITES_MUTT:=devel/}

WANTLIB=	qdbm>=14 z

FLAVORS=	idn sasl sidebar
FLAVOR?=

AUTOCONF_VERSION= 2.65
CONFIGURE_ARGS= --enable-hcache \
		--enable-smtp \
		--without-gdbm

LIB_DEPENDS=	databases/qdbm
BUILD_DEPENDS+=	textproc/docbook-xsl

.if ${FLAVOR:Msasl}
CONFIGURE_ARGS+= --with-sasl=${LOCALBASE}
LIB_DEPENDS+=	security/cyrus-sasl2
WANTLIB+=	sasl2
.endif

MUTTRCDIR=	doc/

DIST_COMPRESSED=compressed-1.5.22.diff0.gz:2
DIST_SIDEBAR=	sidebar-1.5.22.diff1.gz:2

# http://cedricduval.free.fr/mutt/patches/
PATCHFILES+=	trashfolder-1.5.22.diff0.gz:2

.if ${FLAVOR:Msidebar}
PATCHFILES+=		${DIST_SIDEBAR}
.else
SUPDISTFILES+=		${DIST_SIDEBAR}
.endif

AUTOMAKE_VERSION= 1.9
CONFIGURE_STYLE= gnu
BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
post-patch:
	cd ${WRKSRC}; \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    autoreconf --install

.include <bsd.port.mk>
