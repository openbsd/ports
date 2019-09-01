# $OpenBSD: Makefile,v 1.7 2019/09/01 15:49:20 naddy Exp $

PKG_ARCH=	*

COMMENT=	TrueType fonts for Indic scripts

VERSION=	2.5.3
PKGNAME=	lohit-fonts-${VERSION}
CATEGORIES=	fonts x11
HOMEPAGE=	https://pagure.io/lohit
REVISION=	2

# SIL OFL 1.1
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://releases.pagure.org/lohit/
DIST_SUBDIR=	lohit
.for s in	assamese bengali devanagari gujarati kannada malayalam \
		marathi nepali oriya punjabi tamil tamil-classical telugu
DISTFILES+=	lohit-$s-ttf-${VERSION}.tar.gz
.endfor

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/lohit
	${INSTALL_DATA} ${WRKDIST}/*/*.ttf ${PREFIX}/share/fonts/lohit
	${INSTALL_DATA} ${WRKDIST}/lohit-devanagari-ttf-${VERSION}/OFL.txt \
	    ${PREFIX}/share/fonts/lohit

.include <bsd.port.mk>
