# $OpenBSD: Makefile,v 1.13 2002/12/29 20:31:39 fgsch Exp $

COMMENT=	"scans webservers for vulnerable CGI programs"

PKGNAME=	cgichk-3.6

DISTNAME=	cgichk3.6
EXTRACT_SUFX=	.tgz

CATEGORIES=	security

MASTER_SITES=	${MASTER_SITE_BACKUP}

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=        ${WRKDIR}/cgichk3

MAKE_FLAGS=	CC='${CC}' CFLAGS='${CFLAGS} \
			-DCGICHK_CONF="\"${SYSCONFDIR}/cgichk.conf\""'
MAKE_ENV=	SYSCONFDIR="${SYSCONFDIR}"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cgichk ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cgichk
	${INSTALL_DATA} ${WRKSRC}/cgi.conf \
		${PREFIX}/share/examples/cgichk/cgichk.conf

.include <bsd.port.mk>
