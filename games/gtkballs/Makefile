# $OpenBSD: Makefile,v 1.2 2001/03/24 12:51:48 reinhard Exp $

COMMENT=	'gtk+ clone of the lines ball logic game'

DISTNAME=	gtkballs-1.04	
CATEGORIES=	games x11
NEED_VERSION=	1.363
MASTER_SITES=	${HOMEPAGE}dist/ \
		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= games/strategy

HOMEPAGE=	http://gtkballs.antex.ru/

MAINTAINER=	Peter Valchev <pvalchev@home.com>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAKE_FlAGS=	PREFIX="${PREFIX}" CC="${CC}" \
		CFLAGS="${CFLAGS}"

BUILD_DEPENDS=	${LOCALBASE}/bin/gtk-config::x11/gtk+
LIB_DEPENDS=	gtk.1.2::x11/gtk+

USE_X11=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gtkballs
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gtkballs
	${INSTALL_DATA} ${WRKSRC}/README.russian ${PREFIX}/share/doc/gtkballs
	${INSTALL_DATA} ${WRKSRC}/TODO ${PREFIX}/share/doc/gtkballs
	@chmod 660 ${PREFIX}/share/gtkballs/score
	@chown root:games ${PREFIX}/share/gtkballs/score

.include <bsd.port.mk>
