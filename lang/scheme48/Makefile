# $OpenBSD: Makefile,v 1.7 2010/10/24 21:06:28 sthen Exp $

COMMENT=	Scheme Underground's implementation of R5RS

V=		1.8
DISTNAME=	scheme48-$V
REVISION=	1
CATEGORIES=	lang

HOMEPAGE=	http://www.s48.org/

MAINTAINER=	Aaron Hsu <arcfide@sacrideo.us>

# 3-clause BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/$V/
EXTRACT_SUFX=		.tgz

WANTLIB=		c m pthread

USE_GMAKE=		Yes
USE_GROFF=		Yes
ALL_TARGET=		enough

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-Wl,--export-dynamic -pthread"

post-install: 
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scheme48
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${WRKSRC}/doc/*.ps \
		${PREFIX}/share/doc/scheme48
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/scheme48
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scheme48/html
	${INSTALL_DATA} ${WRKSRC}/doc/html/* \
		${PREFIX}/share/doc/scheme48/html

.include <bsd.port.mk>
