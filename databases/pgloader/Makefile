# $OpenBSD: Makefile,v 1.1.1.1 2008/04/07 15:10:11 ajacoutot Exp $

COMMENT=	import CSV data and Large Object to PostgreSQL

DISTNAME=	pgloader-2.3.0
CATEGORIES=	databases

HOMEPAGE=	http://pgfoundry.org/projects/pgloader/

MAINTAINER=	Pierre-Emmanuel Andre <pea@raveland.org>

# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	http://pgfoundry.org/frs/download.php/1679/

MODULES=	lang/python

RUN_DEPENDS=	::databases/py-psycopg2

NO_BUILD=	Yes
NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' \
		${WRKSRC}/pgloader.py
	@perl -pi -e 's,/usr/share/python-support,${MODPY_LIBDIR},' \
		${WRKSRC}/pgloader/options.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/pgloader.py ${PREFIX}/bin/pgloader
	${INSTALL_MAN} ${WRKSRC}/pgloader.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pgloader
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pgloader/allcols
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pgloader/clob
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pgloader/cluttered
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pgloader/csv
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pgloader/errors
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pgloader/parallel
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pgloader/partial
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pgloader/reformat
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pgloader/serial
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pgloader/simple
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pgloader/udc
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_LIBDIR}/pgloader
	${INSTALL_DATA_DIR} ${WRKINST}/${MODPY_LIBDIR}/pgloader/reformat
	${INSTALL_DATA} ${WRKSRC}/*.txt ${PREFIX}/share/doc/pgloader
	${INSTALL_DATA} ${WRKSRC}/examples/README ${PREFIX}/share/examples/pgloader/
	${INSTALL_DATA} ${WRKSRC}/examples/parallel.conf ${PREFIX}/share/examples/pgloader/
	${INSTALL_DATA} ${WRKSRC}/examples/pgloader.conf ${PREFIX}/share/examples/pgloader/
	${INSTALL_DATA} ${WRKSRC}/examples/allcols/* ${PREFIX}/share/examples/pgloader/allcols
	${INSTALL_DATA} ${WRKSRC}/examples/clob/* ${PREFIX}/share/examples/pgloader/clob
	${INSTALL_DATA} ${WRKSRC}/examples/cluttered/* ${PREFIX}/share/examples/pgloader/cluttered
	${INSTALL_DATA} ${WRKSRC}/examples/csv/* ${PREFIX}/share/examples/pgloader/csv
	${INSTALL_DATA} ${WRKSRC}/examples/errors/* ${PREFIX}/share/examples/pgloader/errors
	${INSTALL_DATA} ${WRKSRC}/examples/parallel/* ${PREFIX}/share/examples/pgloader/parallel
	${INSTALL_DATA} ${WRKSRC}/examples/partial/* ${PREFIX}/share/examples/pgloader/partial
	${INSTALL_DATA} ${WRKSRC}/examples/reformat/* ${PREFIX}/share/examples/pgloader/reformat
	${INSTALL_DATA} ${WRKSRC}/examples/serial/* ${PREFIX}/share/examples/pgloader/serial
	${INSTALL_DATA} ${WRKSRC}/examples/simple/* ${PREFIX}/share/examples/pgloader/simple
	${INSTALL_DATA} ${WRKSRC}/examples/udc/* ${PREFIX}/share/examples/pgloader/udc
	${INSTALL_DATA} ${WRKSRC}/pgloader/* ${WRKINST}/${MODPY_LIBDIR}/pgloader
	${INSTALL_DATA} ${WRKSRC}/reformat/* ${WRKINST}/${MODPY_LIBDIR}/pgloader/reformat

.include <bsd.port.mk>
