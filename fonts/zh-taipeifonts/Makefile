# $OpenBSD: Makefile,v 1.6 2019/07/14 02:16:51 naddy Exp $

COMMENT=	extra chinese fonts

DISTNAME=       zh-fonts-taipei-1.01
REVISION=	2
CATEGORIES=     fonts chinese x11

DIST_SUBDIR=    zh-fonts

MASTER_SITES=	https://ftp.kh.edu.tw/Linux/CLE/fonts/bitmap/taipeifont/

PERMIT_DISTFILES=	no license
PERMIT_PACKAGE=		no license

FONTS=		taipei16.pcf.gz taipeik20.pcf.gz taipeim20.pcf.gz \
		taipei24.pcf.gz taipeik24.pcf.gz taipeim24.pcf.gz

DISTFILES=	${FONTS}
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
EXTRACT_ONLY=

CONFIGURE_STYLE=	imake

FONTDIR=	${PREFIX}/share/fonts/chinese

post-extract:
	@mkdir -p ${WRKDIST}
	@cp ${FILESDIR}/Imakefile ${FILESDIR}/taipei.alias ${WRKDIST}
	@for i in ${FONTS} ; do cp $(FULLDISTDIR)/$$i ${WRKDIST}; done

post-install:
	@cd ${FONTDIR} && mv fonts.alias fonts.alias-taipei

.include <bsd.port.mk>
