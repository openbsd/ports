# $OpenBSD: Makefile,v 1.26 2001/03/14 21:06:55 brad Exp $

DISTNAME=	gif2png-2.4.2
CATEGORIES=	graphics
NEED_VERSION=	1.336
MASTER_SITES=	http://www.tuxedo.org/~esr/gif2png/ \
		ftp://ftp.ccil.org/pub/esr/

HOMEPAGE=	http://www.tuxedo.org/~esr/gif2png/

LIB_DEPENDS=	png.1::graphics/png

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-png-inc="${LOCALBASE}/include" \
		--with-png-lib="${LOCALBASE}/lib"


DOCS=	COPYING README

pre-patch:
	@sed -e "s|@PREFIX@|${LOCALBASE}|" \
		${FILESDIR}/web2png > ${WRKDIR}/web2png

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gif2png
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/gif2png
	${INSTALL_SCRIPT} ${WRKSRC}/web2png ${PREFIX}/libexec/web2png.bin
	${INSTALL_SCRIPT} ${WRKDIR}/web2png ${PREFIX}/bin

.include <bsd.port.mk>
