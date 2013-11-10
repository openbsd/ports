# $OpenBSD: Makefile,v 1.3 2013/11/10 15:01:24 naddy Exp $

PKG_ARCH=	*

COMMENT=	TrueType fonts for Indic scripts

VERSION=	2.5.3
PKGNAME=	lohit-fonts-${VERSION}
CATEGORIES=	fonts x11
HOMEPAGE=	https://fedorahosted.org/lohit/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://fedorahosted.org/releases/l/o/lohit/
DIST_SUBDIR=	lohit
.for s in	assamese bengali devanagari gujarati kannada malayalam \
		marathi nepali oriya punjabi tamil tamil-classical telugu
DISTFILES+=	lohit-$s-ttf-${VERSION}.tar.gz
.endfor

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/fonts/lohit
	${INSTALL_DATA} ${WRKDIST}/*/*.ttf ${PREFIX}/lib/X11/fonts/lohit
	${INSTALL_DATA} ${WRKDIST}/lohit-devanagari-ttf-${VERSION}/OFL.txt \
	    ${PREFIX}/lib/X11/fonts/lohit

.include <bsd.port.mk>
