# $OpenBSD: Makefile,v 1.38 2020/06/29 13:01:25 sthen Exp $

SHARED_LIBS +=  ft                   0.0      # .0.0

COMMENT=	utilities for dealing with NetFlow exports

GH_ACCOUNT=	5u623l20
GH_PROJECT=	flow-tools
GH_TAGNAME=	v0.68.6

CATEGORIES=	net

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c z

FLAVORS=		pgsql
FLAVOR?=

MODULES=		lang/python

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/flow-tools

CONFIGURE_STYLE=	autoreconf
AUTOMAKE_VERSION=	1.16
AUTOCONF_VERSION=	2.69
BUILD_DEPENDS=		textproc/docbook-to-man

.if !${FLAVOR:Mpgsql}
CONFIGURE_ARGS+=	--without-postgresql
.else
WANTLIB +=		pq
LIB_DEPENDS+=		databases/postgresql,-main
.endif

MAKE_FLAGS+=		SUBDIRS="lib src bin configs docs"
FAKE_FLAGS+=		sysconfdir=${PREFIX}/share/examples/flow-tools
MODPY_ADJ_FILES=	bin/flow-log2rrd bin/flow-rpt2rrd bin/flow-rptfmt

USE_GMAKE=		Yes

# let configure generate a new ftconfig.h, the supplied one has
# problems with libwrap
pre-configure:
	rm -f ${WRKSRC}/lib/ftconfig.h
	cd ${WRKSRC}/bin; \
	    sed -i -e 's,/usr/local/netflow/var/sym/,${SYSCONFDIR}/sym/,;' \
	    flow-log2rrd flow-rpt2rrd flow-rptfmt

.include <bsd.port.mk>
