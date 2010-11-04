# $OpenBSD: Makefile,v 1.6 2010/11/04 13:45:54 eric Exp $

SHARED_ONLY=	Yes

COMMENT=	geographic objects support for PostgreSQL
DISTNAME=	postgis-1.5.2
CATEGORIES=	geo databases

HOMEPAGE=	http://www.postgis.org/

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}download/

WANTLIB=	c geos_c m pq proj xml2 z

MODULES=        converters/libiconv

LIB_DEPENDS=	::devel/proj \
		:postgresql-client-*:databases/postgresql \
		::geo/geos
RUN_DEPENDS=	:postgresql-server-*:databases/postgresql,-server
BUILD_DEPENDS=	${RUN_DEPENDS}

USE_GMAKE=	Yes
CONFIGURE_ENV=	PGXS=1 \
		LDFLAGS=-L${LOCALBASE}/lib \
		CFLAGS=-I${LOCALBASE}/include
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--datadir=${PREFIX}/share/postgresql/contrib \
		--libdir=${PREFIX}/lib/postgresql
USE_GROFF =	Yes

post-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/libexec/postgis/utils
	${INSTALL_SCRIPT} ${WRKSRC}/utils/*.pl ${PREFIX}/libexec/postgis/utils
	${INSTALL_DATA} ${WRKSRC}/utils/README ${PREFIX}/libexec/postgis/utils
	cd ${WRKSRC}/doc && WRKINST=${WRKINST} ${MAKE_PROGRAM} install

# Note on running regress
#
# - make sure you do not have a postgresql server currently running
# - as user _postgresql, in another terminal, run:
#     $ mkdir /tmp/pg && initdb -D /tmp/pg -U postgres && postgres -D /tmp/pg   
# - run make regress

do-regress: install
	cd ${WRKSRC}/regress && PGUSER=postgres ${MAKE_PROGRAM}


.include <bsd.port.mk>
