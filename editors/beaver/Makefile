# $OpenBSD: Makefile,v 1.1.1.1 2002/06/05 17:50:01 couderc Exp $
COMMENT=	"lightweight Gtk text editor with syntax highlighting"

DISTNAME=	beaver-0.2.3
CATEGORIES=	editors	
NEED_VERSION=	1.531

HOMEPAGE=	http://eturquin.free.fr/beaver/
MASTER_SITES=	${HOMEPAGE}dloads/

MAINTAINER=	Vincent Derrien <vincent.derrien@free.fr>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

MAKE_FLAGS=	CC="${CC}" OPTI="${CFLAGS}"

WRKSRC=	${WRKDIST}/src

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
