# $OpenBSD: Makefile,v 1.12 2000/03/05 18:30:28 espie Exp $

DISTNAME=	gif2png-2.3.0
CATEGORIES=	graphics
NEED_VERSION=	1.223
MASTER_SITES=	http://www.tuxedo.org/~esr/gif2png/ \
		ftp://ftp.ccil.org/pub/esr/

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	png.1.3:graphics/png

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--with-png-inc="${LOCALBASE}/include" \
		--with-png-lib="${LOCALBASE}/lib"

pre-patch:
	@sed -e "s|@PREFIX@|${PREFIX}|" -e "s|@LOCALBASE@|${LOCALBASE}|" \
		${FILESDIR}/web2png > ${WRKDIR}/web2png

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gif2png
	cd ${WRKSRC} && ${INSTALL_DATA} COPYING README \
	 ${PREFIX}/share/doc/gif2png
	${INSTALL_SCRIPT} ${WRKDIR}/web2png ${PREFIX}/bin

.include <bsd.port.mk>
