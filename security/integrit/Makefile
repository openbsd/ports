# $OpenBSD: Makefile,v 1.3 2002/11/27 17:35:55 margarida Exp $

COMMENT=		"file integrity checker"

VERSION=		3.02.00
DISTNAME=		integrit-${VERSION}
CATEGORIES=		security

HOMEPAGE=		http://integrit.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=integrit/} \
			http://www.noserose.net/e/integrit/download/

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}/${DISTNAME:R}

CONFIGURE_STYLE=	gnu

# GCC sparc64 bug.
.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* gcc-*
.endif

ALL_TARGET=		integrit utils

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/integrit
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/integrit
	cd ${WRKSRC}/examples && ${INSTALL_DATA} README crontab install_db \
	  integrit_check viewreport ${PREFIX}/share/doc/integrit 
	cd ${WRKSRC}/examples && ${INSTALL_DATA} *.conf \
	  ${PREFIX}/share/examples/integrit

.include <bsd.port.mk>
