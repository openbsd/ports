# $OpenBSD: Makefile,v 1.5 2000/03/16 23:47:53 turan Exp $

DISTNAME=	xjewel-1.6
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.warwick.ac.uk/pub/x11/
EXTRACT_SUFX=	.tar.z

NEED_VERSION=	1.114

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
