# $OpenBSD: Makefile,v 1.14 2014/10/01 07:39:23 ajacoutot Exp $

COMMENT=		SubVersion plug-in for Eclipse IDE

V=			1.2.1
DISTNAME=		site-${V}
PKGNAME=		eclipse-plugin-subclipse-${V}
CATEGORIES+=		java
REVISION =		1

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# SubClipse itself is CPL 1.0, but
# JavaSVN, which it uses, has a bizarro hybrid: BSD but "no redist w/o source code"
PERMIT_PACKAGE_CDROM=	Stupid license
PERMIT_PACKAGE_FTP=	Yes

HOMEPAGE=		http://subclipse.tigris.org/

MASTER_SITES=		http://subclipse.tigris.org/files/documents/906/37653/

# Distfile is an Update Site download, unpack features jar manually, 
# still tar plugins over into ${PREFIX}
do-install:
		${INSTALL_DATA_DIR} ${PREFIX}/eclipse
		cd ${WRKDIST} && tar cfL - features plugins | \
			(cd ${PREFIX}/eclipse && tar -xf -)

.include <bsd.port.mk>
