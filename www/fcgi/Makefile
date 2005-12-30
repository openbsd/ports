# $OpenBSD: Makefile,v 1.6 2005/12/30 22:26:50 sturm Exp $

COMMENT=		"FastCGI Development Kit"

DISTNAME=		fcgi-2.4.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		www
SHARED_LIBS=		fcgi++	0.0 \
			fcgi	0.0

HOMEPAGE=		http://www.fastcgi.com/

MAINTAINER=		Adam Montague <amontague@siriushosting.com>

# BSD-like
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c 

MASTER_SITES=		${HOMEPAGE}/dist/

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu

CAT3_FILES=		FCGI_Accept FCGI_Finish FCGI_SetExitStatus \
			FCGI_StartFilterData

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/cgi-fcgi.1 ${PREFIX}/man/cat1/cgi-fcgi.0
.for file in ${CAT3_FILES}
	${INSTALL_MAN} ${WRKSRC}/doc/${file}.3 ${PREFIX}/man/cat3/${file}.0
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fcgi
	${INSTALL_DATA} ${WRKSRC}/doc/*.htm* ${WRKSRC}/doc/*.gif \
	${PREFIX}/share/doc/fcgi

.include <bsd.port.mk>
