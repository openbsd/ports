# $OpenBSD: Makefile,v 1.21 2010/10/18 18:37:00 espie Exp $

COMMENT=	powerful console ftp client with many features

DISTNAME=	yafc-1.1
REVISION=	0
CATEGORIES=	net
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=yafc/}

HOMEPAGE=	http://yafc.sourceforge.net/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes 

WANTLIB=		c ncurses readline 

CONFIGURE_STYLE= gnu 
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/support
CONFIGURE_ARGS=	--with-readline --with-catgets --with-krb5=/usr/lib

USE_LIBTOOL=	Yes
USE_GROFF =	Yes

DOCS=	NEWS README TODO

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/yafc
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/yafc
	${INSTALL_DATA} ${WRKBUILD}/yafcrc.sample ${PREFIX}/share/examples/yafc
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/yafc

.include <bsd.port.mk>
