# $OpenBSD: Makefile,v 1.2 2017/04/21 13:27:47 kurt Exp $

COMMENT=		API tools for Amazon EC2 web service

DISTNAME=		ec2-api-tools-1.7.5.1
REVISION=		0

DISTFILES=		ec2-api-tools${EXTRACT_SUFX}
EXTRACT_SUFX=		.zip

CATEGORIES=		sysutils

HOMEPAGE=		https://aws.amazon.com/developertools/351

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Amazon Software License (https://aws.amazon.com/asl/)
# unclear, rather be on the safe side and set CDROM to 'No'
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=		http://s3.amazonaws.com/ec2-downloads/

MODULES=		java
MODJAVA_VER=		1.7+
MODJAVA_JRERUN=		Yes

RUN_DEPENDS=		java/javaPathHelper \
			shells/bash \
			textproc/groff

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
