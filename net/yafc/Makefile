# $OpenBSD: Makefile,v 1.2 2000/09/02 00:28:32 brad Exp $

DISTNAME=	yafc-0.6.1
CATEGORIES=	net
NEED_VERSION=	1.322
MASTER_SITES=	ftp://mayer.physto.se/pub/yafc/ \
		ftp://ftp.uni-klu.ac.at/pub/linux/internet/yafc/ \
		http://ftp.du.se/pub/mirrors/yafc/ \
		ftp://mayer.physto.se/pub/yafc/old/ 

HOMEPAGE=	http://www.stacken.kth.se/~mhe/yafc/

MAINTAINER=	anil@recoil.org

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
