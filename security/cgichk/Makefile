# $OpenBSD: Makefile,v 1.19 2019/07/12 20:49:00 sthen Exp $

COMMENT=	scans webservers for vulnerable CGI programs

PKGNAME=	cgichk-3.6

DISTNAME=	cgichk3.6
EXTRACT_SUFX=	.tgz

CATEGORIES=	security

PERMIT_PACKAGE=	Yes
WANTLIB=		c

WRKDIST=        ${WRKDIR}/cgichk3

MAKE_FLAGS=	CC='${CC}' CFLAGS='${CFLAGS} \
			-DCGICHK_CONF="\"${SYSCONFDIR}/cgichk.conf\""'
MAKE_ENV=	SYSCONFDIR="${SYSCONFDIR}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cgichk ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cgichk
	${INSTALL_DATA} ${WRKSRC}/cgi.conf \
		${PREFIX}/share/examples/cgichk/cgichk.conf

.include <bsd.port.mk>
