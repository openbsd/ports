SHARED_LIBS +=  ft                   0.0      # .0.0

COMMENT=	utilities for dealing with NetFlow exports

GH_ACCOUNT=	5u623l20
GH_PROJECT=	flow-tools
GH_COMMIT=	2ca53f5615c28a6ba159abb6949eca92019a113d
DISTNAME=	flow-tools-0.68.6pl20210211
EPOCH=		0
CATEGORIES=	net

REVISION=	1

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c z

FLAVORS=	pgsql
FLAVOR?=

MODULES=	lang/python

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/flow-tools

CONFIGURE_STYLE=	autoreconf
AUTOMAKE_VERSION=	1.16
AUTOCONF_VERSION=	2.69

.if !${FLAVOR:Mpgsql}
CONFIGURE_ARGS+=	--without-postgresql
.else
WANTLIB +=		pq
LIB_DEPENDS+=		databases/postgresql,-main
.endif

MAKE_FLAGS+=		SUBDIRS="lib src bin configs docs"
FAKE_FLAGS+=		sysconfdir=${PREFIX}/share/examples/flow-tools
# flow-log2rrd and flow-rpt2rrd have never been packaged here
MODPY_ADJ_FILES=	bin/flow-rptfmt

USE_GMAKE=		Yes

# let configure generate a new ftconfig.h, the supplied one has
# problems with libwrap
pre-configure:
	rm -f ${WRKSRC}/lib/ftconfig.h
	sed -i -e 's,/usr/local/netflow/var/sym/,${SYSCONFDIR}/sym/,;' \
	    ${WRKSRC}/bin/flow-rptfmt
	2to3 --fix=all --no-diffs --nobackups --verbose --write \
	    ${WRKSRC}/bin/flow-*

.include <bsd.port.mk>
