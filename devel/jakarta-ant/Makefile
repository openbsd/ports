# $OpenBSD: Makefile,v 1.3 2002/08/02 16:14:27 naddy Exp $

COMMENT=        "java equivalent to make"

DISTNAME=       jakarta-ant-1.3
DISTFILES=	jakarta-ant-1.3-bin.tar.gz
CATEGORIES=     devel
NEED_VERSION=   1.496
MASTER_SITES=	http://jakarta.apache.org/builds/jakarta-ant/release/v1.3/bin/

HOMEPAGE=       http://jakarta.apache.org/ant/

MAINTAINER=     Felix Kronlage <fkr@grummel.net>

# XXX: USE_JAVA=TBD
JAVA_HOME=	${LOCALBASE}/jdk1.2-blackdown
RUN_DEPENDS=    ::devel/jdk/1.2-blackdown

# Apache Software License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

ONLY_FOR_ARCHS= i386
NO_BUILD=       Yes

# this will strip trailing-spaces off the file-names
TAR=tar -s '/ $$//g' -xzf
EXTRACT_ONLY=

ANTDIR=	${PREFIX}/share/doc/java/${PKGNAME}
TXT=	LICENSE README TODO WHATSNEW

post-extract:
	@cd ${WRKDIR} && exec ${TAR} ${FULLDISTDIR}/${DISTFILES}

post-patch:
	@cd ${WRKSRC}/bin && perl -pi -e 's|_anthome_|${PREFIX}/bin|' ant
	@cd ${WRKSRC}/bin && perl -pi -e 's|_antlibs_|${PREFIX}/lib/java|' ant
	@cd ${WRKSRC}/bin && perl -pi -e 's|_antlibs_|"${PREFIX}/lib/java"|' runant.pl
	@cd ${WRKSRC}/bin && perl -pi -e 's|\r||' runant.pl

do-install:
	@${INSTALL_DATA_DIR} ${ANTDIR}
	@cd ${WRKDIST}/bin && \
		${INSTALL_SCRIPT} ant antRun runant.pl ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${ANTDIR}/docs
	@cd ${WRKDIST} && tar cf - docs | (cd ${ANTDIR} && tar -xf -)
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/java/ant
	@cd ${WRKDIST}/lib && ${INSTALL_DATA} *.jar ${PREFIX}/lib/java/ant
	@cd ${WRKDIST} && ${INSTALL_DATA} ${TXT} ${ANTDIR}

.include <bsd.port.mk>
