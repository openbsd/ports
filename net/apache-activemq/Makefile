# $OpenBSD: Makefile,v 1.3 2013/03/04 15:48:41 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	open source message broker implementing JMS 1.1

V=		5.8.0
DISTNAME=	apache-activemq-$V
REVISION=	0

CATEGORIES=	net

# Apache2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_APACHE:=activemq/apache-activemq/${V}/}
EXTRACT_SUFX=	-bin.tar.gz

MODULES=	java
MODJAVA_VER=	1.6+

RUN_DEPENDS=	java/javaPathHelper

SUBST_VARS +=	V

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	rm -r ${WRKSRC}/bin/macosx/ ${WRKSRC}/bin/linux-x86-* ${WRKSRC}/bin/*.orig
	${INSTALL_DATA_DIR} ${PREFIX}/activemq/
	cd ${WRKSRC} && tar cf - * | tar xf - -C ${PREFIX}/activemq/
.for s in activemq activemq-admin
	${SUBST_CMD} -o ${BINOWN} -g ${BINGRP} -c ${FILESDIR}/$s \
		${PREFIX}/bin/$s
	chmod +x ${PREFIX}/bin/$s
.endfor
	${INSTALL_DATA} ${FILESDIR}/activemqrc ${PREFIX}/activemq/conf/

.include <bsd.port.mk>
