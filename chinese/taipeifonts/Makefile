# $OpenBSD: Makefile,v 1.4 2000/06/09 06:57:59 kevlo Exp $

DISTNAME=       chinese-fonts-taipei
CATEGORIES=     chinese x11
DIST_SUBDIR=    chinese-fonts

MASTER_SITES=	ftp://linux.cis.nctu.edu.tw/packages/chinese/fonts/taipeifont/

MAINTAINER=     kevlo@openbsd.org

PERMIT_DISTFILES_CDROM= No fee
PERMIT_DISTFILES_FTP=   Yes
PERMIT_PACKAGE_CDROM=   No fee
PERMIT_PACKAGE_FTP=     Yes

FONTS=		taipei15.pcf.gz taipei16.pcf.gz taipei24.pcf.gz \
		taipeik24.pcf.gz

DISTFILES=	${FONTS}
NO_BUILD=	Yes
EXTRACT_ONLY=

USE_IMAKE=	Yes
FAKE=		Yes

FONTDIR=${PREFIX}/lib/X11/fonts/chinese

post-extract:
	@mkdir -p ${WRKDIST}
	@cp ${FILESDIR}/Imakefile ${FILESDIR}/taipei.alias ${FILESDIR}/fonts.dir ${WRKDIST}
	@for i in ${FONTS} ; do cp $(FULLDISTDIR)/$$i ${WRKDIST}; done

post-install:
	@cp ${WRKDIST}/fonts.dir ${FONTDIR}

.include <bsd.port.mk>
