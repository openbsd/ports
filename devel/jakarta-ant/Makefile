# $OpenBSD: Makefile,v 1.6 2002/12/01 02:20:18 naddy Exp $

ONLY_FOR_ARCHS= i386

COMMENT=        "java equivalent to make"

DISTNAME=       jakarta-ant-1.3
CATEGORIES=     devel

HOMEPAGE=       http://jakarta.apache.org/ant/

# Apache Software License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://jakarta.apache.org/builds/jakarta-ant/release/v1.3/bin/
EXTRACT_SUFX=	-bin.tar.gz

RUN_DEPENDS=    ::devel/jdk/1.2-blackdown

NO_BUILD=       Yes
NO_REGRESS=	Yes

ANTDIR=	${PREFIX}/share/doc/java/${PKGNAME}
TXT=	LICENSE README TODO WHATSNEW

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
