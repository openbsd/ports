# $OpenBSD: Makefile,v 1.19 2002/10/24 23:52:29 naddy Exp $

COMMENT=	"extra chinese fonts"

DISTNAME=       zh-fonts-taipei-1.01
CATEGORIES=     chinese x11

DIST_SUBDIR=    zh-fonts

MASTER_SITES=	ftp://ftp.nsysu.edu.tw/Linux/packages/chinese/fonts/taipeifont/ \
		ftp://ftp.ee.ncku.edu.tw/pub/Linux/packages/chinese/fonts/taipeifont/ \
		ftp://ftp.shellhung.org/pub/OpenBSD/packages/chinese/taipeifont/

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes

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
