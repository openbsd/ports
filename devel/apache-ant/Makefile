# $OpenBSD: Makefile,v 1.6 2005/09/25 09:22:49 espie Exp $

COMMENT=        "java equivalent to make"

DISTNAME=	apache-ant-1.6.5
PKGNAME=	${DISTNAME}p0
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

BUILD_DEPENDS=	::archivers/gtar

NO_BUILD=	Yes
NO_REGRESS=	Yes

TAR=		${LOCALBASE}/bin/gtar

ANTDOCS=	${PREFIX}/share/doc/java/ant
TXT=		README WHATSNEW LICENSE NOTICE LICENSE.dom LICENSE.sax LICENSE.xerces

do-install:
	@cd ${WRKDIST}/bin; \
	    perl -pi -e 's|_antlibs_|${TRUEPREFIX}/lib/java/ant|;' \
		ant runant.pl; \
	    ${INSTALL_SCRIPT} ant antRun runant.pl ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${ANTDOCS}
	@cp -Rp ${WRKDIST}/docs/* ${ANTDOCS}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${ANTDOCS}
	@cd ${WRKDIST} && ${INSTALL_DATA} ${TXT} ${ANTDOCS}
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/java/ant
	@cd ${WRKDIST}/lib && ${INSTALL_DATA} *.jar ${PREFIX}/lib/java/ant

.include <bsd.port.mk>
