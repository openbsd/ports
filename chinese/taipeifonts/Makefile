# $OpenBSD: Makefile,v 1.8 2000/10/05 09:35:30 kevlo Exp $

DISTNAME=       zh-fonts-taipei
CATEGORIES=     chinese x11
NEED_VERSION=	1.319
DIST_SUBDIR=    zh-fonts

MASTER_SITES=	ftp://linux.cis.nctu.edu.tw/packages/chinese/fonts/taipeifont/

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_DISTFILES_CDROM= No fee
PERMIT_DISTFILES_FTP=   Yes
PERMIT_PACKAGE_CDROM=   No fee
PERMIT_PACKAGE_FTP=     Yes

FONTS=		taipei16.pcf.gz taipeik20.pcf.gz taipeim20.pcf.gz \
		taipei24.pcf.gz taipeik24.pcf.gz taipeim24.pcf.gz

DISTFILES=	${FONTS}
NO_BUILD=	Yes
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
