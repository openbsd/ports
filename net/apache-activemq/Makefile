# $OpenBSD: Makefile,v 1.13 2014/05/07 15:42:16 kurt Exp $

PKG_ARCH=	*

COMMENT=	open source message broker implementing JMS 1.1

V=		5.9.0
DISTNAME=	apache-activemq-$V
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	https://activemq.apache.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_APACHE:=activemq/apache-activemq/${V}/}
EXTRACT_SUFX=	-bin.tar.gz

MODULES=	java
MODJAVA_VER=	1.6+

RUN_DEPENDS=	java/javaPathHelper

SUBST_VARS +=	V

NO_BUILD=	Yes
NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bin/activemq

do-install:
	rm -r ${WRKSRC}/bin/{macosx,linux-x86-*,*.orig} \
		${WRKSRC}/data
	${INSTALL_DATA_DIR} ${PREFIX}/activemq/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/activemq/conf
	cd ${WRKSRC} && tar cf - * | tar xf - -C ${PREFIX}/activemq/
	${INSTALL_DATA} ${FILESDIR}/activemq.conf ${PREFIX}/share/examples/activemq/
	mv ${PREFIX}/activemq/conf ${PREFIX}/share/examples/activemq/
	cd ${PREFIX}/activemq && ln -sf /var/db/activemq/data data
	cd ${PREFIX}/activemq && ln -sf /var/db/activemq/tmp tmp
	cd ${PREFIX}/activemq && ln -sf ${SYSCONFDIR}/activemq conf

.include <bsd.port.mk>
