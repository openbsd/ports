# $OpenBSD: Makefile,v 1.1.1.1 2006/08/01 14:34:33 alek Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"R5RS Scheme byte-code interpreter"

DISTNAME=	scheme48-1.3
CATEGORIES=	lang

HOMEPAGE=	http://www.s48.org/

MAINTAINER=	Aaron Hsu <arcfide@sacrificumdeo.net>

# BSD with GPL, see COPYING file
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m c

MASTER_SITES=	${HOMEPAGE}/1.3/
EXTRACT_SUFX=	.tgz

CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	LDFLAGS="-Wl,--export-dynamic"

post-install: 
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scheme48
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${WRKSRC}/doc/*.ps \
		${PREFIX}/share/doc/scheme48
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/scheme48
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scheme48/html
	${INSTALL_DATA} ${WRKSRC}/doc/html/* \
		${PREFIX}/share/doc/scheme48/html

.include <bsd.port.mk>
