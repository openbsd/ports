# $OpenBSD: Makefile,v 1.1.1.1 2002/08/28 01:41:11 lebel Exp $

COMMENT=		"a reminder/task program aimed at developers"
CATEGORIES=		productivity devel

DISTNAME=		devtodo-0.1.14
MASTER_SITES=		http://devtodo.sourceforge.net/?0.1.14/

HOMEPAGE=		http://devtodo.sourceforge.net/

MAINTAINER=		Margarida Sequeira <niness@devilness.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/devtodo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/devtodo
	cd ${WRKSRC} && ${INSTALL_DATA} README QuickStart \
  	  ${PREFIX}/share/doc/devtodo
	cd ${WRKSRC}/doc && ${INSTALL_DATA} scripts.sh scripts.tcsh todorc.example \
	  ${PREFIX}/share/examples/devtodo

.include <bsd.port.mk>
