# $OpenBSD: Makefile,v 1.3 1999/10/02 22:24:54 brad Exp $

DISTNAME=	xjewel-1.6
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.warwick.ac.uk/pub/x11/
EXTRACT_SUFX=	.tar.z

NEED_VERSION=	1.114

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes

pre-install:
	@${MKDIR} ${PREFIX}/lib/xjewel.font
	@(cd ${WRKSRC}/bitmaps; ${INSTALL_DATA} seven_seg.pcf.gz fonts.dir \
		${PREFIX}/lib/xjewel.font)

post-install:
	@(${MV} ${PREFIX}/bin/xjewel ${PREFIX}/bin/xjewel_; \
	  ${ECHO} "#!/bin/sh"				>  ${PREFIX}/bin/xjewel; \
	  ${ECHO} "xset +fp ${PREFIX}/lib/xjewel.font"	>> ${PREFIX}/bin/xjewel; \
	  ${ECHO} "xjewel_"				>> ${PREFIX}/bin/xjewel; \
	  ${CHMOD} ugo+x ${PREFIX}/bin/xjewel)

.include <bsd.port.mk>
