# $OpenBSD: Makefile,v 1.17 2010/05/06 21:40:31 sthen Exp $

SHARED_LIBS +=  ft                   0.0      # .0.0

COMMENT=	cisco NetFlow utilities

DISTNAME=	flow-tools-0.68.5
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	net

MAINTAINER=     Stuart Henderson <sthen@openbsd.org>

# forked from:  http://www.splintered.net/sw/flow-tools/
HOME_PAGE=	http://code.google.com/p/flow-tools/

MASTER_SITES=	http://flow-tools.googlecode.com/files/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=		pgsql
FLAVOR?=

WANTLIB=		c z

MODULES=		lang/python

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		simple
CONFIGURE_ARGS+=	--localstatedir=/var/flow-tools

.if !${FLAVOR:L:Mpgsql}
CONFIGURE_ARGS+=	--without-postgresql
.else
LIB_DEPENDS+=		pq::databases/postgresql,-main
.endif

MAKE_FLAGS+=		"SUBDIRS=lib src bin configs docs"
FAKE_FLAGS+=		sysconfdir=${PREFIX}/share/examples/flow-tools

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

PYTHON_SCRIPTS=		bin/flow-log2rrd \
			bin/flow-rpt2rrd \
			bin/flow-rptfmt

post-patch:
.for file in ${PYTHON_SCRIPTS}
	mv ${WRKSRC}/${file} ${WRKSRC}/${file}.dist
	sed "s!/bin/env python!${MODPY_BIN}!" \
		< ${WRKSRC}/${file}.dist > ${WRKSRC}/${file}
.endfor

.include <bsd.port.mk>
