# $OpenBSD: Makefile,v 1.4 2000/02/11 01:10:03 espie Exp $

DISTNAME=	xjewel-1.6
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.warwick.ac.uk/pub/x11/
EXTRACT_SUFX=	.tar.z

NEED_VERSION=	1.114

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes

pre-install:
	@mkdir -p ${PREFIX}/lib/xjewel.font
	@(cd ${WRKSRC}/bitmaps; ${INSTALL_DATA} seven_seg.pcf.gz fonts.dir \
		${PREFIX}/lib/xjewel.font)

post-install:
	@(mv ${PREFIX}/bin/xjewel ${PREFIX}/bin/xjewel_; \
	  echo "#!/bin/sh"				>  ${PREFIX}/bin/xjewel; \
	  echo "xset +fp ${PREFIX}/lib/xjewel.font"	>> ${PREFIX}/bin/xjewel; \
	  echo "xjewel_"				>> ${PREFIX}/bin/xjewel; \
	  ${CHMOD} ugo+x ${PREFIX}/bin/xjewel)

.include <bsd.port.mk>
