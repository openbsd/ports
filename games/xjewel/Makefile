# $OpenBSD: Makefile,v 1.2 1998/11/09 01:49:58 marc Exp $
#

DISTNAME=	xjewel-1.6
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	ftp://ftp.warwick.ac.uk/pub/x11/
EXTRACT_SUFX=	.tar.z

USE_IMAKE=	yes

pre-install:
	@${MKDIR} ${PREFIX}/bin
	@${MKDIR} ${PREFIX}/lib/xjewel.font
	@${MKDIR} ${PREFIX}/man/man6
	@(cd ${WRKSRC}/bitmaps/; ${INSTALL_DATA} seven_seg.pcf.gz fonts.dir \
		${PREFIX}/lib/xjewel.font)

post-install:
	@(mv ${PREFIX}/bin/xjewel ${PREFIX}/bin/xjewel_; \
	  echo "#!/bin/sh" >${PREFIX}/bin/xjewel; \
	  echo "xset +fp ${PREFIX}/lib/xjewel.font" >>${PREFIX}/bin/xjewel; \
	  echo "xjewel_" >>${PREFIX}/bin/xjewel; \
	  chmod ugo+x ${PREFIX}/bin/xjewel)

.include <bsd.port.mk>
