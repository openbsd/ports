# $OpenBSD: Makefile,v 1.10 2009/09/05 15:54:16 sturm Exp $

COMMENT=	collecting and processing thoughts according to GTD

V=		2.2.1
DISTNAME=	tr-$V
PKGNAME=	thinkingrock-${V}
CATEGORIES=	productivity java

HOMEPAGE=	http://www.trgtd.com.au/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# CDDL
PERMIT_PACKAGE_CDROM=	CDDL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	CDDL
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=thinkingrock/}

MODULES=	java
MODJAVA_VER=	1.6+
MODJAVA_JRERUN= Yes

RUN_DEPENDS=	::java/javaPathHelper \
		::devel/xdg-utils

NO_BUILD=	Yes
NO_REGRESS=	Yes

PKG_ARCH=	*

do-configure:
	${SUBST_CMD} ${WRKSRC}/bin/tr

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/thinkingrock
	for d in etc ide10 platform9 tr; do \
		cp -R ${WRKSRC}/$$d ${PREFIX}/share/thinkingrock; \
	done
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/thinkingrock
	${INSTALL_SCRIPT} ${WRKSRC}/bin/tr ${PREFIX}/bin/thinkingrock

.include <bsd.port.mk>
