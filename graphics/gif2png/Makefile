# $OpenBSD: Makefile,v 1.4 1999/12/06 01:11:49 brad Exp $

DISTNAME=	gif2png-2.2.4
CATEGORIES=	graphics
MASTER_SITES=	http://www.tuxedo.org/~esr/gif2png/ \
		ftp://ftp.ccil.org/pub/esr/

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	png.1.3:${PORTSDIR}/graphics/png

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-png-inc="${LOCALBASE}/include" \
		--with-png-lib="${LOCALBASE}/lib"

DOCS=	COPYING README

pre-patch: extract
	@sed -e "s|@PREFIX@|${LOCALBASE}|" ${FILESDIR}/web2png > ${WRKDIR}/web2png

post-install:
	@mkdir -p ${PREFIX}/share/doc/gif2png
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${PREFIX}/share/doc/gif2png
.endfor
	${INSTALL_SCRIPT} ${WRKDIR}/web2png ${PREFIX}/bin

.include <bsd.port.mk>
