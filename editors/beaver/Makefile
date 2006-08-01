# $OpenBSD: Makefile,v 1.8 2006/08/01 23:39:08 espie Exp $
COMMENT=	"lightweight Gtk text editor with syntax highlighting"

DISTNAME=	beaver-0.2.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	editors	

HOMEPAGE=	http://www.nongnu.org/beaver/
MASTER_SITES=	http://savannah.nongnu.org/download/beaver/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m

LIB_DEPENDS=	gtk.>=1.2,gdk.>=1.2::x11/gtk+

USE_GMAKE=	Yes
MAKE_FLAGS=	CC="${CC}" OPTI="${CFLAGS}"

WRKSRC=	${WRKDIST}/src

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/beaver \
		${PREFIX}/bin/beaver
	${INSTALL_DATA} ${WRKDIST}/beaver.1x \
		${PREFIX}/man/man1/beaver.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/beaver
	${INSTALL_DATA} ${WRKDIST}/pixmaps/beaver.png \
		${PREFIX}/share/beaver/beaver.png
	${INSTALL_DATA_DIR} ${PREFIX}/share/beaver/bl
	@cd ${WRKDIST}; ${INSTALL_DATA} ${WRKDIST}/bl/* \
		${PREFIX}/share/beaver/bl

.include <bsd.port.mk>
