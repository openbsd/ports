# $OpenBSD: Makefile,v 1.15 2002/10/26 20:44:39 naddy Exp $

COMMENT=	"dropping jewels game for X11"

DISTNAME=	xjewel-1.6
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.warwick.ac.uk/pub/x11/
EXTRACT_SUFX=	.tar.z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=imake

NO_REGRESS=	Yes

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/xjewel.font
	@(cd ${WRKSRC}/bitmaps; ${INSTALL_DATA} seven_seg.pcf.gz fonts.dir \
		${PREFIX}/lib/xjewel.font)

post-install:
	@(mv ${PREFIX}/bin/xjewel ${PREFIX}/bin/xjewel_; \
	  echo "#!/bin/sh"				>  ${PREFIX}/bin/xjewel; \
	  echo "xset +fp ${TRUEPREFIX}/lib/xjewel.font"	>> ${PREFIX}/bin/xjewel; \
	  echo "xjewel_"				>> ${PREFIX}/bin/xjewel; \
	  ${CHMOD} ugo+x ${PREFIX}/bin/xjewel)

.include <bsd.port.mk>
