# OpenBSD makefile for: xjewel
# Version required:     1.6
# Date created:         May 19 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 03:12:38 angelos Exp $
#

DISTNAME=	xjewel-1.6
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.warwick.ac.uk/pub/x11/
DISTFILES=	xjewel-1.6.tar.z

MAINTAINER=	angelos@openbsd.org

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
