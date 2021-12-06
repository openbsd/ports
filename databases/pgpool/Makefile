# $OpenBSD: Makefile,v 1.15 2021/12/06 01:00:58 tb Exp $

COMMENT= 	connection pool server for PostgreSQL

DISTNAME= 	pgpool-II-3.7.18
REVISION=	0

CATEGORIES= 	databases

HOMEPAGE= 	https://www.pgpool.net/

MAINTAINER= 	Pierre-Emmanuel Andre <pea@openbsd.org>

SHARED_LIBS=  pcp	0.0

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://www.pgpool.net/mediawiki/images/

WANTLIB= 		c crypto m pq ssl pthread

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS= 	--with-openssl

USE_GMAKE=		Yes
FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/pgpool-II/

BUILD_DEPENDS = 	databases/postgresql,-server
LIB_DEPENDS = 		databases/postgresql

post-install:
	@cd ${WRKSRC}/src/sql/pgpool-regclass && \
		env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		-f ${MAKE_FILE} ${ALL_TARGET} && \
		env -i ${MAKE_ENV} \
		PREFIX=${WRKINST}${PREFIX} ${DESTDIRNAME}=${WRKINST} TRUEPREFIX=${PREFIX} \
		${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} -f ${MAKE_FILE} ${FAKE_TARGET}
	${INSTALL_MAN} ${WRKDIST}/./doc/src/sgml/man8/pgpool.8 ${PREFIX}/man/man8/

.include <bsd.port.mk>
