# $OpenBSD: Makefile,v 1.29 2009/08/05 07:25:48 mglocker Exp $

COMMENT=		Nostromo webserver

DISTNAME=		nostromo-1.9.2
CATEGORIES=		www
MASTER_SITES=		http://www.nazgul.ch/dev/

HOMEPAGE=		http://www.nazgul.ch/dev.html

MAINTAINER=		Marcus Glocker <marcus@nazgul.ch>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c crypto ssl

NO_REGRESS=		Yes

# Change bsd.port.mk vars
WRKSRC=			${WRKDIST}/src

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nhttpd/nhttpd ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/tools/crypt ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/nhttpd/nhttpd.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nostromo
	${INSTALL_DATA} ${WRKDIST}/ChangeLog ${PREFIX}/share/doc/nostromo
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/nostromo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nostromo
	${INSTALL_DATA} ${WRKDIST}/htdocs/cgi-bin/printenv \
		${PREFIX}/share/examples/nostromo
	${INSTALL_DATA} ${WRKDIST}/conf/mimes \
		${PREFIX}/share/examples/nostromo
	${INSTALL_DATA} ${WRKDIST}/conf/nhttpd.conf-dist \
		${PREFIX}/share/examples/nostromo
	${INSTALL_DATA} ${WRKDIST}/htdocs/index.html \
		${PREFIX}/share/examples/nostromo
	${INSTALL_DATA} ${WRKDIST}/htdocs/nostromo.gif \
		${PREFIX}/share/examples/nostromo
	${INSTALL_DATA} ${WRKDIST}/icons/dir.gif \
		${PREFIX}/share/examples/nostromo
	${INSTALL_DATA} ${WRKDIST}/icons/file.gif \
		${PREFIX}/share/examples/nostromo

.include <bsd.port.mk>
