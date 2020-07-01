# $OpenBSD: Makefile,v 1.40 2020/07/01 10:04:53 sthen Exp $

SHARED_LIBS +=  ft                   0.0      # .0.0

COMMENT=	utilities for dealing with NetFlow exports

DISTNAME=	flow-tools-0.68.5.1
EXTRACT_SUFX=	.tar.bz2
EPOCH=		0
CATEGORIES=	net

# originally from http://www.splintered.net/sw/flow-tools/ (no longer exists)
# there is a fork at https://github.com/5u623l20/flow-tools but it has some
# problems (including triggering SIGABRT in docbook-to-man)
HOMEPAGE=	https://code.google.com/p/flow-tools/

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=flow-tools/}

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c z

FLAVORS=		pgsql
FLAVOR?=

MODULES=		lang/python

LOCALSTATEDIR=		${BASELOCALSTATEDIR}/flow-tools

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes
SYSCONFDIR=		${BASESYSCONFDIR}/flow-tools

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
