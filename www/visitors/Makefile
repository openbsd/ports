# $OpenBSD: Makefile,v 1.1.1.1 2006/10/24 09:04:19 msf Exp $

COMMENT=	"very fast web log analyzer"

DISTNAME=	visitors-0.7
CATEGORIES=	www sysutils

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=	c

HOMEPAGE=	http://www.hping.org/visitors/
MASTER_SITES=	${HOMEPAGE}

WRKDIST=${WRKDIR}/${DISTNAME:S/-/_/}

NO_REGRESS=	Yes

MAKE_ENV+=	DEBUG=''

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/visitors 	${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/visitors
	${INSTALL_DATA} ${WRKSRC}/doc.html ${PREFIX}/share/doc/visitors/

.include <bsd.port.mk>
