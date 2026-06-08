COMMENT=	set of internet protocol service daemons for Unix

DISTNAME=	ipsvd-0.12.1
REVISION=	1
CATEGORIES=	net

# https://github.com/g-pape/ipsvd/
HOMEPAGE=	https://smarden.org/ipsvd/
SITES=		https://smarden.org/ipsvd/

# BSD
PERMIT_PACKAGE=Yes

WANTLIB=	c

WRKDIST=	${WRKDIR}/net/${DISTNAME}
WRKSRC=		${WRKDIST}/src

pre-build:
	echo "${CC} ${CFLAGS} ${COPTS}" > ${WRKSRC}/conf-cc
	echo "${CC} ${LDFLAGS}" > ${WRKSRC}/conf-ld

do-build:
	cd ${WRKDIST} && package/compile

do-test:
	cd ${WRKDIST}/compile && make check

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/command/* ${PREFIX}/sbin/
	${INSTALL_MAN} ${WRKDIST}/man/*.8 ${PREFIX}/man/man8/
	${INSTALL_MAN} ${WRKDIST}/man/*.7 ${PREFIX}/man/man7/
	${INSTALL_MAN} ${WRKDIST}/man/*.5 ${PREFIX}/man/man5/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ipsvd
	${INSTALL_DATA} ${WRKDIST}/doc/*.html ${PREFIX}/share/doc/ipsvd/
	${INSTALL_DATA} ${WRKDIST}/package/[A-Z]* ${PREFIX}/share/doc/ipsvd/

.include <bsd.port.mk>
