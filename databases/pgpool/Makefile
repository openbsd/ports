# $OpenBSD: Makefile,v 1.1.1.1 2011/12/21 15:51:04 pea Exp $

COMMENT= 	connection pool server for PostgreSQL

DISTNAME= 	pgpool-II-3.1

CATEGORIES= 	databases

HOMEPAGE= 	http://www.pgpool.net/

MAINTAINER= 	Pierre-Emmanuel Andre <pea@openbsd.org>

SHARED_LIBS=  pcp	0.0

# BSD
PERMIT_PACKAGE_FTP= 	Yes
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_DISTFILES_FTP= 	Yes
PERMIT_DISTFILES_CDROM= Yes

MASTER_SITES= 		http://pgfoundry.org/frs/download.php/3114/

WANTLIB= 		c crypto m pq ssl

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
