# $OpenBSD: Makefile,v 1.3 2000/09/15 17:03:42 avsm Exp $

DISTNAME=	yafc-0.6.2
CATEGORIES=	net
NEED_VERSION=	1.330
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= yafc

HOMEPAGE=	http://www.stacken.kth.se/~mhe/yafc/
MAINTAINER=	avsm@openbsd.org

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes 

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--without-readline --with-catgets
# doesn't work with 2.7's old readline version
# remove the --without-readline when binutils is upgraded

DOCS=	NEWS README TODO

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yafc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/yafc
	${INSTALL_DATA} ${WRKBUILD}/yafcrc.sample ${PREFIX}/share/examples/yafc
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/yafc

.include <bsd.port.mk>
