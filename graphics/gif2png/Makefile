# $OpenBSD: Makefile,v 1.16 2000/03/24 23:28:09 espie Exp $

DISTNAME=	gif2png-2.3.2
CATEGORIES=	graphics
NEED_VERSION=	 1.230
MASTER_SITES=	http://www.tuxedo.org/~esr/gif2png/ \
		ftp://ftp.ccil.org/pub/esr/


LIB_DEPENDS=	png.1.3::graphics/png

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--with-png-inc="${LOCALBASE}/include" \
		--with-png-lib="${LOCALBASE}/lib"

pre-patch:
	@sed -e "s|@PREFIX@|${LOCALBASE}|" \
		${FILESDIR}/web2png > ${WRKDIR}/web2png

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gif2png
	cd ${WRKSRC} && ${INSTALL_DATA} COPYING README \
	 ${PREFIX}/share/doc/gif2png
	${INSTALL_SCRIPT} ${WRKDIR}/web2png ${PREFIX}/bin

.include <bsd.port.mk>
