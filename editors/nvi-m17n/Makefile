# $OpenBSD: Makefile,v 1.10 2000/10/22 15:41:52 espie Exp $
# NetBSD: Makefile,v 1.6 2000/01/19 12:28:44 hubertf Exp
# FreeBSD Id: Makefile,v 1.11 1999/04/17 10:51:03 itojun Exp

DISTNAME=	nvi-1.79
PKGNAME=	nvi-m17n-1.79.19991117
CATEGORIES=	editors
NEED_VERSION=	1.305
MASTER_SITES0=	ftp://ftp.foretune.co.jp/pub/tools/nvi-m17n/

MASTER_SITES=	ftp://sleepy.vwh.net/pub/ \
		${MASTER_SITES0}

PATCHFILES=	nvi-1.79.m17n-19991117.diff.gz

MAINTAINER=	Jun-ichiro itojun Hagino <itojun@itojun.org>

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes


FLAVORS= canna
FLAVOR?=

PATCH_DIST_STRIP=-p1
WRKSRC=	${WRKDIR}/${DISTNAME}/build
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	OPTFLAG='-D_PATH_SYSEXRC=\"/etc/vi.exrc\"' 
CONFIGURE_ARGS+=--enable-multibyte --program-prefix=n --host=${ARCH}-unknown-netbsd

PATCH_FUZZ_FACTOR=	-F1

.if ${FLAVOR:L} == "canna"
LIB_DEPENDS+=	canna.1.::japanese/canna
CONFIGURE_ARGS+=--enable-canna=${LOCALBASE}
.endif

PLIST=	${WRKDIR}/PLIST

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
	@sed -e 's|$${CANNA_OPT}|${CANNA_OPT.${encoding}}|'		\
		-e 's|$${AUTODETECT}|${AUTODETECT.${encoding}}|'	\
		-e 's|$${ENCODING}|${encoding}|g'			\
		-e 's|$${PREFIX}|${PREFIX}|'				\
		${FILESDIR}/nvi-m17n > ${WRKDIR}/nvi-${encoding}
.endfor

post-install:
.for encoding in ${ENCODING}
	@${INSTALL_SCRIPT} ${WRKDIR}/nvi-${encoding} ${PREFIX}/bin
.endfor
	@${INSTALL_DATA} ${WRKDIST}/docs.m17n/README.english \
		${PREFIX}/share/vi/
	@${INSTALL_DATA} ${WRKDIST}/docs.m17n/README.japanese \
		${PREFIX}/share/vi/

.include <bsd.port.mk>

${PLIST}:
	@cp ${FILESDIR}/PLIST ${PLIST}
.for encoding in ${ENCODING}
	@echo "bin/nvi-${encoding}" >> ${PLIST}
.endfor

