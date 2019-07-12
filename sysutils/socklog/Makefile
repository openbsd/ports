# $OpenBSD: Makefile,v 1.9 2019/07/12 20:49:52 sthen Exp $

COMMENT=		small and secure replacement for syslogd

DISTNAME=		socklog-2.1.0
CATEGORIES=		sysutils

HOMEPAGE=		http://www.smarden.org/socklog/

MAINTAINER=		Christian Rueger <cr+openbsd@rueger-net.de>

PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}
WRKDIST=		${WRKDIR}/admin/${DISTNAME}
WRKSRC=			${WRKDIST}/src
BINPROGRAMS=		tryto uncat
SBINPROGRAMS=		socklog socklog-check socklog-conf
BINMANPAGES=		tryto.1 uncat.1
SBINMANPAGES=		socklog-check.8 socklog-conf.8 socklog.8
DOCS1=			benefits.html network.html socklog.8.html \
			configuration.html notify.html tryto.1.html \
			examples.html uncat.1.html index.html \
			socklog-check.8.html upgrade.html install.html \
			socklog-conf.8.html
DOCS2=			CHANGES README COPYING

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
.for page in ${BINMANPAGES}
	${INSTALL_MAN} ${WRKDIST}/man/${page} ${PREFIX}/man/man1
.endfor
.for page in ${SBINMANPAGES}
	${INSTALL_MAN} ${WRKDIST}/man/${page} ${PREFIX}/man/man8
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/socklog
.for doc in ${DOCS1}
	${INSTALL_DATA} ${WRKDIST}/doc/${doc} ${PREFIX}/share/doc/socklog/
.endfor
.for doc in ${DOCS2}
	${INSTALL_DATA} ${WRKDIST}/package/${doc} ${PREFIX}/share/doc/socklog/
.endfor

.include <bsd.port.mk>
