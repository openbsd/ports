# $OpenBSD: Makefile,v 1.20 2003/09/22 22:53:36 pvalchev Exp $

COMMENT=	"extra chinese fonts"

DISTNAME=       zh-fonts-taipei-1.01
CATEGORIES=     chinese x11

DIST_SUBDIR=    zh-fonts

MASTER_SITES=	ftp://ftp.nsysu.edu.tw/Linux/packages/chinese/fonts/taipeifont/ \
		ftp://ftp.ee.ncku.edu.tw/pub/Linux/packages/chinese/fonts/taipeifont/ \
		ftp://ftp.shellhung.org/pub/OpenBSD/packages/chinese/taipeifont/

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_DISTFILES_CDROM= "no license"
PERMIT_DISTFILES_FTP=   "no license"
PERMIT_PACKAGE_CDROM=   "no license"
PERMIT_PACKAGE_FTP=     "no license"

FONTS=		taipei16.pcf.gz taipeik20.pcf.gz taipeim20.pcf.gz \
		taipei24.pcf.gz taipeik24.pcf.gz taipeim24.pcf.gz

DISTFILES=	${FONTS}
NO_BUILD=	Yes
NO_REGRESS=	Yes
EXTRACT_ONLY=

CONFIGURE_STYLE=	imake

FONTDIR=	${PREFIX}/lib/X11/fonts/chinese

post-extract:
	@mkdir -p ${WRKDIST}
	@cp ${FILESDIR}/Imakefile ${FILESDIR}/taipei.alias ${WRKDIST}
	@for i in ${FONTS} ; do cp $(FULLDISTDIR)/$$i ${WRKDIST}; done

post-install:
	@cd ${FONTDIR} && mv fonts.alias fonts.alias-taipei

.include <bsd.port.mk>
