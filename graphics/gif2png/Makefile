# $OpenBSD: Makefile,v 1.5 1999/12/25 06:46:51 brad Exp $

DISTNAME=	gif2png-2.2.5
CATEGORIES=	graphics
MASTER_SITES=	http://www.tuxedo.org/~esr/gif2png/ \
		ftp://ftp.ccil.org/pub/esr/

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	png.1.3:${PORTSDIR}/graphics/png

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-png-inc="${LOCALBASE}/include" \
		--with-png-lib="${LOCALBASE}/lib"

pre-patch: extract
	@sed -e "s|@PREFIX@|${LOCALBASE}|" ${FILESDIR}/web2png > ${WRKDIR}/web2png

post-install:
	@mkdir -p ${PREFIX}/share/doc/gif2png
	cd ${WRKSRC} && ${INSTALL_DATA} COPYING README \
	 ${PREFIX}/share/doc/gif2png
	${INSTALL_SCRIPT} ${WRKDIR}/web2png ${PREFIX}/bin

.include <bsd.port.mk>
