# $NetBSD: Makefile,v 1.6 2000/01/19 12:28:44 hubertf Exp $
# FreeBSD Id: Makefile,v 1.11 1999/04/17 10:51:03 itojun Exp

DISTNAME=	nvi-1.79
PKGNAME=	nvi-m17n-1.79.19991117
CATEGORIES=	editors
MASTER_SITES=	ftp://sleepy.vwh.net/pub/ \
		ftp://ftp.foretune.co.jp/pub/tools/nvi-m17n/

PATCH_SITES=	ftp://ftp.foretune.co.jp/pub/tools/nvi-m17n/
PATCHFILES=	nvi-1.79.m17n-19991117.diff.gz

MAINTAINER=	itojun@itojun.org

CONFLICTS=	vigor-*

WRKSRC=		${WRKDIR}/${DISTNAME}/build
GNU_CONFIGURE=	YES
PATCH_DIST_ARGS=-d ${WRKSRC}/.. --forward --quiet -E -p1 -f
CONFIGURE_ENV=	OPTFLAG='-D_PATH_SYSEXRC=\"${PREFIX}/etc/vi.exrc\"'
CONFIGURE_ARGS+=--enable-multibyte --program-prefix=n

.include "../../mk/bsd.prefs.mk"

PATCH_FUZZ_FACTOR=	-F1

.if !defined(USE_CANNA) || ${USE_CANNA} == YES
DEPENDS+=	Canna-lib-3.5b2:../../japanese/canna-lib
CONFIGURE_ARGS+=--enable-canna=${LOCALBASE}
.endif

PLIST_TMP=	${WRKDIR}/PLIST
PLIST_SRC+=	${PKGDIR}/PLIST ${PLIST_TMP}

REQ_TMP=	${PKGDIR}/REQ
REQ_FILE=	${WRKDIR}/REQ

CANNA_OPT.euc-jp=canna cannactrl cannakey=
CANNA_OPT.sjis=${CANNA_OPT.euc-jp}
CANNA_OPT.iso-2022-jp=${CANNA_OPT.euc-jp}

AUTODETECT.euc-jp=jp
AUTODETECT.sjis=jp
AUTODETECT.iso-2022-jp=jp

AUTODETECT.euc-cn=cn
AUTODETECT.big5=cn
AUTODETECT.hz=cn
AUTODETECT.iso-2022-cn=cn

AUTODETECT.euc-tw=tw

AUTODETECT.euc-kr=kr
AUTODETECT.iso-2022-kr=kr

ENCODING+=	iso-2022-cn iso-2022-jp iso-2022-kr
ENCODING+=	euc-jp euc-cn euc-kr sjis big5 euc-tw hz

post-build:
.for encoding in ${ENCODING}
	@${SED} -e 's|$${CANNA_OPT}|${CANNA_OPT.${encoding}}|'		\
		-e 's|$${AUTODETECT}|${AUTODETECT.${encoding}}|'	\
		-e 's|$${ENCODING}|${encoding}|g'			\
		-e 's|$${PREFIX}|${PREFIX}|'				\
		${FILESDIR}/nvi-m17n > ${WRKDIR}/nvi-${encoding}
	@${ECHO} "bin/nvi-${encoding}" >> ${PLIST_TMP}
.endfor
	@${SED} -e 's|$${PREFIX}|${PREFIX}|' ${REQ_TMP} > ${REQ_FILE}

post-install:
.for encoding in ${ENCODING}
	@${INSTALL_SCRIPT} ${WRKDIR}/nvi-${encoding} ${PREFIX}/bin
.endfor
	@${CP} ${WRKSRC}/../docs.m17n/README.english \
		${PREFIX}/share/vi/
	@${CP} ${WRKSRC}/../docs.m17n/README.japanese \
		${PREFIX}/share/vi/

.include "../../mk/bsd.pkg.mk"
