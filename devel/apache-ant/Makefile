# $OpenBSD: Makefile,v 1.11 2006/11/01 20:47:41 kurt Exp $

COMMENT=        "java replacement for make"

DISTNAME=	apache-ant-1.6.5
PKGNAME=	${DISTNAME}p5
CATEGORIES=	devel

HOMEPAGE=	http://ant.apache.org/

MAINTAINER=	Kurt Miller <kurt@openbsd.org>

# Apache Software License 2.0 &
# W3C Consortium License (August 14 1998)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_APACHE:=ant/binaries/} \
		http://archive.apache.org/dist/ant/binaries/

EXTRACT_SUFX=	-bin.tar.gz

MODULES=	java
MODJAVA_VER=	1.3+

RUN_DEPENDS=	::java/javaPathHelper
BUILD_DEPENDS=	::archivers/gtar

NO_BUILD=	Yes
NO_REGRESS=	Yes

TAR=		${LOCALBASE}/bin/gtar

ANTDOCS=	${PREFIX}/share/doc/java/ant
TXT=		README WHATSNEW LICENSE NOTICE LICENSE.dom LICENSE.sax LICENSE.xerces

do-install:
	@cd ${WRKDIST}/bin; \
	    perl -pi -e 's|_antlibs_|${TRUEPREFIX}/ant/lib|;' \
		ant runant.pl; \
	    ${INSTALL_SCRIPT} ant antRun runant.pl ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${ANTDOCS}
	@cp -Rp ${WRKDIST}/docs/* ${ANTDOCS}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${ANTDOCS}
	@cd ${WRKDIST} && ${INSTALL_DATA} ${TXT} ${ANTDOCS}
	@${INSTALL_DATA_DIR} ${PREFIX}/ant/lib
	@cd ${WRKDIST}/lib && ${INSTALL_DATA} *.jar ${PREFIX}/ant/lib

.include <bsd.port.mk>
