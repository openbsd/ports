# $OpenBSD: Makefile,v 1.1.1.1 2000/08/18 03:51:25 kevlo Exp $

DISTNAME=		yafc-0.5.8
CATEGORIES=     	net
NEED_VERSION=		1.319

HOMEPAGE=		http://www.stacken.kth.se/~mhe/yafc/
MAINTAINER=		anil@recoil.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		ftp://mayer.physto.se/pub/yafc/ \
			ftp://ftp.uni-klu.ac.at/pub/linux/internet/yafc/ \
			http://ftp.du.se/pub/mirrors/yafc/ \
			ftp://mayer.physto.se/pub/yafc/old/ 

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-readline --with-catgets
# doesn't work with 2.7's old readline version
# remove the --without-readline when binutils is upgraded

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/yafc
	${INSTALL_DATA} ${WRKBUILD}/yafcrc.sample ${PREFIX}/share/examples/yafc

.include <bsd.port.mk>
