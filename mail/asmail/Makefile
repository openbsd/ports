# $OpenBSD: Makefile,v 1.14 2000/12/19 15:27:54 espie Exp $

DISTNAME=	asmail-0.56
CATEGORIES=	mail
NEED_VERSION=	1.305
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE} \
		ftp://gates.enemy.at/pub/
MASTER_SITE_SUBDIR= asmail 

HOMEPAGE=	http://asmail.sourceforge.net/

LIB_DEPENDS=	jpeg.62::graphics/jpeg

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-shaping
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@sed -e s#!!PREFIX!!#${PREFIX}#g \
	 ${WRKSRC}/sample.asmailrc > ${WRKSRC}/sample.asmailrc.new
	@mv ${WRKSRC}/sample.asmailrc.new ${WRKSRC}/sample.asmailrc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/X11/pixmaps/cloud-e
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/asmail
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asmail
	${INSTALL_MAN} ${WRKSRC}/asmail.man ${PREFIX}/man/cat1/asmail.0
	${INSTALL_DATA} ${WRKSRC}/pixmaps/cloud-e/*.xpm ${PREFIX}/include/X11/pixmaps/cloud-e
	${INSTALL_DATA} ${WRKSRC}/pixmaps/*.xpm ${PREFIX}/include/X11/pixmaps
	${INSTALL_DATA} ${WRKSRC}/sample.asmailrc ${PREFIX}/share/examples/asmail
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/asmail

.include <bsd.port.mk>
