# $OpenBSD: Makefile,v 1.5 2013/04/22 15:53:37 benoit Exp $

COMMENT= 	connection pool server for PostgreSQL

DISTNAME= 	pgpool-II-3.2.3

CATEGORIES= 	databases

HOMEPAGE= 	http://www.pgpool.net/

MAINTAINER= 	Pierre-Emmanuel Andre <pea@openbsd.org>

SHARED_LIBS=  pcp	0.0

# BSD
PERMIT_PACKAGE_CDROM= 	Yes

MASTER_SITES=		http://www.pgpool.net/mediawiki/images/

WANTLIB= 		c crypto m pq ssl pthread

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS= 	--with-openssl 

USE_GMAKE=		Yes
FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/pgpool-II/

BUILD_DEPENDS = 	databases/postgresql,-server
LIB_DEPENDS = 		databases/postgresql

post-install:
	@cd ${WRKSRC}/sql/pgpool-regclass && \
		env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		-f ${MAKE_FILE} ${ALL_TARGET} && \
		env -i ${MAKE_ENV} \
		PREFIX=${WRKINST}${PREFIX} ${DESTDIRNAME}=${WRKINST} TRUEPREFIX=${PREFIX} \
		${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}

.include <bsd.port.mk>
