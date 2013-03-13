# $OpenBSD: Makefile,v 1.5 2013/03/13 16:30:11 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	open source message broker implementing JMS 1.1

V=		5.8.0
DISTNAME=	apache-activemq-$V
REVISION=	1

CATEGORIES=	net

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

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

do-install:
	rm -r ${WRKSRC}/bin/macosx/ ${WRKSRC}/bin/linux-x86-* ${WRKSRC}/bin/*.orig
	${INSTALL_DATA_DIR} ${PREFIX}/activemq/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/activemq/conf
	cd ${WRKSRC} && tar cf - * | tar xf - -C ${PREFIX}/activemq/
	${INSTALL_DATA} ${FILESDIR}/activemqrc ${PREFIX}/share/examples/activemq/
	mv ${PREFIX}/activemq/conf ${PREFIX}/share/examples/activemq/

.include <bsd.port.mk>
