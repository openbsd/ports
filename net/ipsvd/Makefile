# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:29 sthen Exp $

COMMENT=		set of internet protocol service daemons for Unix

DISTNAME=		ipsvd-0.12.1
REVISION=		0
CATEGORIES=		net

HOMEPAGE=		http://www.smarden.org/ipsvd/

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}
WRKDIST=		${WRKDIR}/net/${DISTNAME}
WRKSRC=			${WRKDIST}/src
SBINPROGRAMS=		ipsvd-cdb tcpsvd udpsvd
MAN8PAGES=		ipsvd-cdb.8 tcpsvd.8 udpsvd.8
DOCS=			benefits.html ipsvd-cdb.8.html tcpsvd.8.html \
			examples.html ipsvd-instruct.5.html udpsvd.8.html \
			index.html ipsvd.7.html upgrade.html install.html
PKGDOCS=		CHANGES README COPYING

pre-build:
	echo "${CC} ${CFLAGS} ${COPTS}" > ${WRKSRC}/conf-cc
	echo "${CC} ${LDFLAGS}" > ${WRKSRC}/conf-ld

do-build:
	cd ${WRKDIST} && package/compile

do-test:
	cd ${WRKDIST}/compile && make check

do-install:
.for pgm in ${SBINPROGRAMS}
	${INSTALL_PROGRAM} ${WRKDIST}/command/${pgm} ${PREFIX}/sbin/
.endfor
.for page in ${MAN8PAGES}
	${INSTALL_MAN} ${WRKDIST}/man/${page} ${PREFIX}/man/man8/
.endfor
	${INSTALL_MAN} ${WRKDIST}/man/ipsvd.7 ${PREFIX}/man/man7/
	${INSTALL_MAN} ${WRKDIST}/man/ipsvd-instruct.5 ${PREFIX}/man/man5/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ipsvd
.for doc in ${DOCS}
	${INSTALL_DATA} ${WRKDIST}/doc/${doc} ${PREFIX}/share/doc/ipsvd/
.endfor
.for doc in ${PKGDOCS}
	${INSTALL_DATA} ${WRKDIST}/package/${doc} ${PREFIX}/share/doc/ipsvd/
.endfor

.include <bsd.port.mk>
