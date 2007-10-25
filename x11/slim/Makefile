# $OpenBSD: Makefile,v 1.2 2007/10/25 09:30:13 landry Exp $

COMMENT=	simple login manager

DISTNAME=	slim-1.3.0
PKGNAME=	${DISTNAME}p0

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
		CFGDIR=${PREFIX}/share/examples/slim \
		DESTDIR=${WRKINST}

pre-configure:
	perl -pi -e 's!/usr/!${PREFIX}/!' ${WRKSRC}/slim.1
	perl -pi -e 's!%%X11BASE%%!${X11BASE}!' ${WRKSRC}/slim.conf
	perl -pi -e 's!%%LOCALBASE%%!${LOCALBASE}!' ${WRKSRC}/slim.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/slim
	@sed -e 's,!!PREFIX!!,${TRUEPREFIX},g' \
		-e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g' \
		< ${FILESDIR}/README.OpenBSD \
		> ${PREFIX}/share/doc/slim/README.OpenBSD

.include <bsd.port.mk>
