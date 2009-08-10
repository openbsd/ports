# $OpenBSD: Makefile,v 1.27 2009/08/10 06:32:42 kili Exp $

COMMENT=	biff-type program, designed to match AfterStep

DISTNAME=	asmail-0.56
PKGNAME=	asmail-0.56p3
CATEGORIES=	mail

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=asmail/}

HOMEPAGE=	http://asmail.sourceforge.net/

LIB_DEPENDS=	jpeg.>=62::graphics/jpeg

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xpm Xt c pthread-stubs xcb

USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-shaping
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	@sed -e s#!!PREFIX!!#${PREFIX}#g \
	 ${WRKSRC}/sample.asmailrc > ${WRKSRC}/sample.asmailrc.new
	@mv ${WRKSRC}/sample.asmailrc.new ${WRKSRC}/sample.asmailrc

NO_REGRESS=	Yes

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
