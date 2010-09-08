# $OpenBSD: Makefile,v 1.60 2010/09/08 09:57:28 sthen Exp $

COMMENT=	tty-based e-mail client, development version

VERSION=	1.5.20
DISTNAME=	mutt-5302767aa6aa
DISTFILES=	${DISTNAME}.tar.bz2
PKGNAME=	mutt-${VERSION}.20100824
# ${MASTER_SITE_SOURCEFORGE:=mutt/} ${MASTER_SITES_MUTT:=devel/}
MASTER_SITES=	http://spacehopper.org/mirrors/

WANTLIB=	qdbm.>=14 z

FLAVORS=	idn sasl sidebar
FLAVOR?=

AUTOCONF_VERSION= 2.64
CONFIGURE_ARGS= --enable-hcache \
		--enable-smtp \
		--without-gdbm

LIB_DEPENDS=	::databases/qdbm
BUILD_DEPENDS+=	::textproc/docbook \
		::textproc/docbook-xsl \
		::textproc/libxslt

.if ${FLAVOR:L:Msasl}
CONFIGURE_ARGS+= --with-sasl=${LOCALBASE}
LIB_DEPENDS+=	::security/cyrus-sasl2
WANTLIB+=	sasl2
.endif

MUTTRCDIR=	doc/

DIST_COMPRESSED=compressed-5302767aa6aa.gz:2
DIST_SIDEBAR=	sidebar-5302767aa6aa.gz:2

.if ${FLAVOR:L:Msidebar}
PATCHFILES+=		${DIST_SIDEBAR}
PATCH_DIST_STRIP=	-p1
.else
SUPDISTFILES+=		${DIST_SIDEBAR}
.endif

## following needed for hg snapshots
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
