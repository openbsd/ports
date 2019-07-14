# $OpenBSD: Makefile,v 1.8 2019/07/14 00:39:39 naddy Exp $

COMMENT=		API tools for Amazon EC2 web service

DISTNAME=		ec2-api-tools-1.7.5.1
REVISION=		5

EXTRACT_SUFX=		.zip

CATEGORIES=		sysutils

HOMEPAGE=		https://aws.amazon.com/developertools/351

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Amazon Software License (https://aws.amazon.com/asl/)
# unclear, rather be on the safe side and set CDROM to 'No'
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://s3.amazonaws.com/ec2-downloads/

MODULES=		java
MODJAVA_VER=		1.8+

RUN_DEPENDS=		java/javaPathHelper \
			shells/bash

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/{,share/doc/}ec2-api-tools
	cp -R ${WRKSRC}/bin ${PREFIX}/ec2-api-tools/
	cp -R ${WRKSRC}/lib ${PREFIX}/ec2-api-tools/
	rm ${PREFIX}/ec2-api-tools/bin/*.cmd
	${INSTALL_DATA} ${FILESDIR}/LICENSE-ASL \
		${PREFIX}/share/doc/ec2-api-tools

.include <bsd.port.mk>
