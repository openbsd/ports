# $OpenBSD: Makefile,v 1.8 2003/02/09 22:06:33 pvalchev Exp $
# $NetBSD: Makefile,v 1.1.1.2 2001/03/26 11:59:15 hubertf Exp $

COMMENT=		"passive OS fingerprinting tool"

DISTNAME=		p0f-1.8.2
CATEGORIES=     	security net

HOMEPAGE=		http://www.stearns.org/p0f/

MAINTAINER=		Jose Nazario <jose@crimelabs.net>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}
DISTFILES=		${DISTNAME}.tgz
DIST_SUBDIR=		${DISTNAME}

MAKE_FLAGS=		CC='${CC}' \
			CFLAGS='${CFLAGS} -DSYSCONFDIR="\"${SYSCONFDIR}\""'
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/p0f ${PREFIX}/bin/p0f
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/p0f
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p0f
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/p0f/README
	${INSTALL_DATA} ${WRKSRC}/p0f.fp ${PREFIX}/share/examples/p0f/p0f.fp

.include <bsd.port.mk>
