# 
# $OpenBSD: Makefile,v 1.2 2000/07/10 20:28:03 danh Exp $
#

DISTNAME=		webalizer-2.00-12-src
PKGNAME=		webalizer-2.00_12
EXTRACT_SUFX=		.tgz
CATEGORIES=     	www
HOMEPAGE=		http://www.mrunix.net/webalizer/

MAINTAINER=		danh@openbsd.org

MASTER_SITES=		ftp://ftp.mrunix.net/pub/webalizer/pre-release/

LICENCE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

LIB_DEPENDS=    	gd.18::graphics/gd

HAS_CONFIGURE=		Yes 
CONFIGURE_ARGS+=	--enable-dns
CONFIGURE_ARGS+=	--with-png=${LOCALBASE}/lib

WRKDIST=		${WRKDIR}/webalizer-2.00-12

FAKE=			Yes
FAKE_FLAGS+=		prefix='${WRKINST}${PREFIX}'

post-install:
	cd ${PREFIX}/bin; ln -s webalizer webazolver
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/webalizer
	${INSTALL_DATA} ${WRKSRC}/sample.conf ${PREFIX}/share/doc/webalizer
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/webalizer
	${INSTALL_DATA} ${WRKSRC}/README.FIRST ${PREFIX}/share/doc/webalizer

.include <bsd.port.mk>
