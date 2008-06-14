# $OpenBSD: Makefile,v 1.3 2008/06/14 16:48:22 sturm Exp $

COMMENT=	collecting and processing thoughts according to GTD

V=		2.0.1
DISTNAME=	tr-$V
PKGNAME=	thinkingrock-${V}p0
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

RUN_DEPENDS=	::java/javaPathHelper

NO_BUILD=	Yes
NO_REGRESS=	Yes

PKG_ARCH=	*

post-extract:
	@rm ${WRKSRC}/etc/tr.conf~

do-configure:
	${SUBST_CMD} ${WRKSRC}/bin/tr ${WRKSRC}/etc/tr.conf

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/thinkingrock
	for d in etc ide9 platform8 tr; do \
		cp -R ${WRKSRC}/$$d ${PREFIX}/share/thinkingrock; \
	done
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/thinkingrock
	${INSTALL_SCRIPT} ${WRKSRC}/bin/tr ${PREFIX}/bin/thinkingrock
	${INSTALL_SCRIPT} ${WRKSRC}/bin/xdg-email ${PREFIX}/bin
	# NetBeans shipped with TR doesn't know about OpenBSD and thus uses
	# different names than on linux
	ln -s xdg-email ${PREFIX}/bin/email
	${INSTALL_SCRIPT} ${WRKSRC}/bin/xdg-open ${PREFIX}/bin
	ln -s xdg-open ${PREFIX}/bin/open
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/thinkingrock
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/thinkingrock
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/thinkingrock
	${INSTALL_SCRIPT} ${FILESDIR}/x* ${PREFIX}/share/examples/thinkingrock

.include <bsd.port.mk>
