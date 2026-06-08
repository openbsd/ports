COMMENT=	small and secure replacement for syslogd

DISTNAME=	socklog-2.1.2
CATEGORIES=	sysutils

# https://github.com/g-pape/socklog/
HOMEPAGE=	https://smarden.org/socklog/
SITES=		https://smarden.org/socklog/

MAINTAINER=	Christian Rueger <cr+openbsd@rueger-net.de>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c

WRKDIST=	${WRKDIR}/admin/${DISTNAME}
WRKSRC=		${WRKDIST}/src
BINPROGRAMS=	tryto uncat
SBINPROGRAMS=	socklog socklog-check socklog-conf

pre-build:
	echo "${CC} ${CFLAGS} ${COPTS}" > ${WRKSRC}/conf-cc
	echo "${CC} ${LDFLAGS}" > ${WRKSRC}/conf-ld

do-build:
	cd ${WRKDIST} && package/compile

do-test:
	cd ${WRKDIST}/compile && make check

do-install:
.for pgm in ${BINPROGRAMS}
	${INSTALL_PROGRAM} ${WRKDIST}/command/${pgm} ${PREFIX}/bin/
.endfor
.for pgm in ${SBINPROGRAMS}
	${INSTALL_PROGRAM} ${WRKDIST}/command/${pgm} ${PREFIX}/sbin/
.endfor
	${INSTALL_MAN} ${WRKDIST}/man/*.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKDIST}/man/*.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/socklog
	${INSTALL_DATA} ${WRKDIST}/doc/*.html ${PREFIX}/share/doc/socklog/
	${INSTALL_DATA} ${WRKDIST}/package/[A-Z]* ${PREFIX}/share/doc/socklog/

.include <bsd.port.mk>
