# $OpenBSD: Makefile,v 1.8 2009/04/26 09:38:25 sthen Exp $

COMMENT=	collecting and processing thoughts according to GTD

V=		2.0.1
DISTNAME=	tr-$V
PKGNAME=	thinkingrock-${V}p5
CATEGORIES=	productivity java

HOMEPAGE=	http://www.thinkingrock.com.au/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# CDDL
PERMIT_PACKAGE_CDROM=	CDDL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	CDDL
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=thinkingrock/}

MODULES=	java
MODJAVA_VER=	1.5+
MODJAVA_JRERUN= Yes

RUN_DEPENDS=	::java/javaPathHelper \
		::devel/xdg-utils

NO_BUILD=	Yes
NO_REGRESS=	Yes

PKG_ARCH=	*

do-configure:
	${SUBST_CMD} ${WRKSRC}/bin/tr ${WRKSRC}/etc/tr.conf
	@rm ${WRKSRC}/etc/tr.conf~
	@rm ${WRKSRC}/etc/tr.conf.bak
	@rm ${WRKSRC}/etc/tr.conf.orig

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/thinkingrock
	for d in etc ide9 platform8 tr; do \
		cp -R ${WRKSRC}/$$d ${PREFIX}/share/thinkingrock; \
	done
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/thinkingrock
	${INSTALL_SCRIPT} ${WRKSRC}/bin/tr ${PREFIX}/bin/thinkingrock

.include <bsd.port.mk>
