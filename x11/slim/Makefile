# $OpenBSD: Makefile,v 1.8 2010/07/10 10:46:52 armani Exp $

COMMENT=	simple login manager

DISTNAME=	slim-1.3.1
PKGNAME=	${DISTNAME}p2

CATEGORIES=	x11
HOMEPAGE=	http://slim.berlios.de/

MAINTAINER=	Landry Breuil <gaston@gcu.info>
MASTER_SITES=	${MASTER_SITE_BERLIOS:=slim/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
NO_REGRESS=	Yes
LIB_DEPENDS=	jpeg::graphics/jpeg \
		png::graphics/png

WANTLIB=	X11 Xft Xmu Xrender fontconfig c m stdc++ z freetype

MAKE_FILE=	Makefile.openbsd
MAKE_FLAGS+=	CFGDIR=${SYSCONFDIR}
FAKE_FLAGS+=	PREFIX=${PREFIX} \
		CFGDIR=${PREFIX}/share/examples/slim

pre-configure:
	${SUBST_CMD} ${WRKSRC}/slim.1 ${WRKSRC}/slim.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/slim
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/slim/README.OpenBSD
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/slim/README.OpenBSD

.include <bsd.port.mk>
