# $OpenBSD: Makefile,v 1.3 2001/12/17 20:33:34 brad Exp $

COMMENT=	"small, easy to set up, fast and very secure FTP server"

DISTNAME=	pure-ftpd-1.0.5
CATEGORIES=	net
NEED_VERSION=	1.500
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= pureftpd

HOMEPAGE=	http://pureftpd.sourceforge.net/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-everything \
		 --with-paranoidmsg \
		 --without-ldap \
		 --without-mysql

FLAVORS=	no_banner
FLAVOR?=

.if ${FLAVOR:L:Mno_banner}
CONFIGURE_ARGS+= --without-banner
.endif

DOCS=	README README.Configuration-File README.Contrib \
	README.Virtual-Users poweredby.jpg

CONTRIB= xml_python_processors.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pure-ftpd
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pure-ftpd
	${INSTALL_PROGRAM} ${WRKSRC}/configuration-file/pure-config.pl \
		${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/configuration-file/pure-ftpd.conf \
		${PREFIX}/share/examples/pure-ftpd/pure-ftpd.conf.sample
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/pure-ftpd
	cd ${WRKSRC}/contrib; ${INSTALL_DATA} ${CONTRIB} \
		${PREFIX}/share/examples/pure-ftpd

.include <bsd.port.mk>
