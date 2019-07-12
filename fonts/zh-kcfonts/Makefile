# $OpenBSD: Makefile,v 1.6 2019/07/12 21:02:19 sthen Exp $

COMMENT=	extra chinese fonts

DISTNAME=       zh-fonts-kc-1.05
REVISION=	2
CATEGORIES=     fonts chinese x11

PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://ftp.kh.edu.tw/Linux/CLE/fonts/bitmap/KCFONTS/
DIST_SUBDIR=    zh-kcfonts
DISTFILES=	${FONTS}

CONFIGURE_STYLE= imake

EXTRACT_ONLY=
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

FONTS=		kc8x15.pcf.gz kc12x24.pcf.gz kc15f.pcf.gz kc24f.pcf.gz

FONTDIR=	${PREFIX}/share/fonts/chinese

post-extract:
	@mkdir -p ${WRKDIST}
	@cp ${FILESDIR}/Imakefile ${FILESDIR}/kc.alias ${WRKDIST}
	@for i in ${FONTS} ; do cp $(FULLDISTDIR)/$$i ${WRKDIST}; done

post-install:
	@cd ${FONTDIR} && mv fonts.alias fonts.alias-kc

.include <bsd.port.mk>
