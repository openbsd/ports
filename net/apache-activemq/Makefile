# $OpenBSD: Makefile,v 1.34 2019/07/12 20:47:59 sthen Exp $

PKG_ARCH=	*

COMMENT=	open source message broker implementing JMS 1.1

V=		5.14.5
DISTNAME=	apache-activemq-$V
REVISION=	3

CATEGORIES=	net

HOMEPAGE=	https://activemq.apache.org/

# Apache2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_APACHE:=activemq/${V}/}
EXTRACT_SUFX=	-bin.tar.gz

MODULES=	java
MODJAVA_VER=	1.8+

RUN_DEPENDS=	java/javaPathHelper

SUBST_VARS +=	V

NO_BUILD=	Yes
NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bin/activemq

INSTALL_DIRS=	${PREFIX}/activemq/lib/ \
		${PREFIX}/activemq/webapps{,-demo}/ \
		${PREFIX}/activemq/examples \
		${PREFIX}/share/examples/activemq/

do-install:
	-rm -r ${WRKSRC}/bin/{macosx,linux-x86-*,*.orig} \
		${WRKSRC}/data
	${INSTALL_DATA_DIR} ${PREFIX}/activemq/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/activemq/conf
	cd ${WRKSRC} && tar cf - * | tar xf - -C ${PREFIX}/activemq/
	${INSTALL_DATA} ${FILESDIR}/activemq.conf ${PREFIX}/share/examples/activemq/
	mv ${PREFIX}/activemq/conf ${PREFIX}/share/examples/activemq/
	# Lots of weird modes to fixup, use a sledgehammer
	find ${INSTALL_DIRS} -type f -print0 | xargs -0 chmod ${SHAREMODE}
	find ${PREFIX}/activemq/bin/ -type f -name \*.jar -print0 | xargs -0 chmod ${BINMODE}
	cd ${PREFIX}/activemq && ln -sf /var/db/activemq/data data
	cd ${PREFIX}/activemq && ln -sf /var/db/activemq/tmp tmp
	cd ${PREFIX}/activemq && ln -sf ${SYSCONFDIR}/activemq conf

.include <bsd.port.mk>
