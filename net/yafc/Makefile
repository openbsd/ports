# $OpenBSD: Makefile,v 1.4 2000/09/29 15:19:19 avsm Exp $

DISTNAME=	yafc-0.6.2
CATEGORIES=	net
NEED_VERSION=	1.336
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= yafc

HOMEPAGE=	http://yafc.sourceforge.net/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

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
