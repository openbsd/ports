# $OpenBSD: Makefile,v 1.7 2003/02/08 15:38:34 reinhard Exp $

ONLY_FOR_ARCHS= i386

COMMENT=        "java equivalent to make"

V=		1.5.1
DISTNAME=	jakarta-ant-${V}
CATEGORIES=	devel

HOMEPAGE=	http://jakarta.apache.org/ant/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://jakarta.apache.org/builds/jakarta-ant/release/v${V}/bin/
EXTRACT_SUFX=	-bin.tar.gz

BUILD_DEPENDS=	::archivers/gtar
RUN_DEPENDS=	:jdk*->=1.1:devel/jdk/1.3-linux

NO_BUILD=	Yes
NO_REGRESS=	Yes

TAR=		${LOCALBASE}/bin/gtar

ANTDOCS=	${PREFIX}/share/doc/java/ant
TXT=		README WHATSNEW

post-patch:
	@cd ${WRKSRC}/bin && perl -pi -e 's|_anthome_|${PREFIX}/bin|' ant
	@cd ${WRKSRC}/bin && perl -pi -e 's|_antlibs_|${PREFIX}/lib/java/ant|' ant
	@cd ${WRKSRC}/bin && perl -pi -e 's|_antlibs_|"${PREFIX}/lib/java/ant"|' runant.pl

do-install:
	@cd ${WRKDIST}/bin && \
		${INSTALL_SCRIPT} ant antRun runant.pl ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${ANTDOCS}
	@cp -Rp ${WRKDIST}/docs/* ${ANTDOCS}
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/java/ant
	@cd ${WRKDIST}/lib && ${INSTALL_DATA} *.jar ${PREFIX}/lib/java/ant
	@cd ${WRKDIST} && ${INSTALL_DATA} ${TXT} ${ANTDOCS}

.include <bsd.port.mk>
