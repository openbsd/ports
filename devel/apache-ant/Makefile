# $OpenBSD: Makefile,v 1.2 2004/06/05 16:56:39 naddy Exp $

ONLY_FOR_ARCHS= i386

COMMENT=        "java equivalent to make"

DISTNAME=	apache-ant-1.6.1
CATEGORIES=	devel

HOMEPAGE=	http://ant.apache.org/

MAINTAINER=	Kurt Miller <truk@apache.org>

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_APACHE:=ant/binaries/} \
		http://archive.apache.org/dist/ant/binaries/

EXTRACT_SUFX=	-bin.tar.gz

BUILD_DEPENDS=	::archivers/gtar
RUN_DEPENDS=	:jdk*->=1.2:devel/jdk/1.3-linux

NO_BUILD=	Yes
NO_REGRESS=	Yes

TAR=		${LOCALBASE}/bin/gtar

ANTDOCS=	${PREFIX}/share/doc/java/ant
TXT=		README WHATSNEW LICENSE

do-install:
	@cd ${WRKDIST}/bin; \
	    perl -pi -e 's|_anthome_|${TRUEPREFIX}/bin|;' \
		-e 's|_antlibs_|${TRUEPREFIX}/lib/java/ant|;' ant runant.pl; \
	    ${INSTALL_SCRIPT} ant antRun runant.pl ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${ANTDOCS}
	@cp -Rp ${WRKDIST}/docs/* ${ANTDOCS}
	@cd ${WRKDIST} && ${INSTALL_DATA} ${TXT} ${ANTDOCS}
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/java/ant
	@cd ${WRKDIST}/lib && ${INSTALL_DATA} *.jar ${PREFIX}/lib/java/ant

.include <bsd.port.mk>
