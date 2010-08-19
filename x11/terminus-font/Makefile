# $OpenBSD: Makefile,v 1.22 2010/08/19 15:51:07 ray Exp $

COMMENT=		fixed width fonts especially for long hacking sessions

DISTNAME=		terminus-font-4.30
CATEGORIES=		x11

HOMEPAGE=		http://terminus-font.sourceforge.net/

MAINTAINER=		Ray Lai <ray@cyth.net>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=terminus-font/}

CONFIGURE_STYLE=	simple
NO_REGRESS=		Yes
USE_X11=		Yes

ALL_TARGET=		n12

FONTDIR=		${PREFIX}/lib/X11/fonts/terminus

FLAVORS=		symquotes
FLAVOR?=

.if ${FLAVOR:L:Msymquotes}
DISTFILES+=		${DISTNAME}-gq2.diff.gz

post-patch:
	${PATCH} -d ${WRKSRC} < ${WRKDIR}/${DISTNAME}-gq2.diff
.endif

do-install:
	${GZIP_CMD} ${WRKSRC}/*.pcf
	${X11BASE}/bin/mkfontdir ${WRKSRC}
	egrep '\.pcf\.gz' ${WRKSRC}/fonts.dir | \
		sed 's/\.pcf\.gz//g' > ${WRKSRC}/fonts.alias
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKBUILD}/fonts.alias ${FONTDIR}/fonts.alias-terminus

.include <bsd.port.mk>
