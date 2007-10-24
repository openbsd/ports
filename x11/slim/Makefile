# $OpenBSD: Makefile,v 1.1.1.1 2007/10/24 23:32:00 landry Exp $

COMMENT-main=	simple login manager
COMMENT-themes=	slim themes bundle

VTHEME=		1.2.3
DISTNAME=	slim-1.3.0
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		slim-${VTHEME}-themepack1a${EXTRACT_SUFX}

EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

PKGNAME-main=	${DISTNAME}
PKGNAME-themes=	slim-themes-${VTHEME}

CATEGORIES=	x11
HOMEPAGE=	http://slim.berlios.de/

MAINTAINER=	Landry Breuil <gaston@gcu.info>
MASTER_SITES=	${MASTER_SITE_BERLIOS:=slim/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-main -themes

LIB_DEPENDS-themes=
PKG_ARCH-themes=	*

USE_X11=	Yes
NO_REGRESS=	Yes
LIB_DEPENDS=	jpeg::graphics/jpeg \
		png::graphics/png

WANTLIB-main=	X11 Xft Xmu Xrender fontconfig c m stdc++ z freetype

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
	@tar xzf ${FULLDISTDIR}/slim-${VTHEME}-themepack1a${EXTRACT_SUFX} \
		-C ${PREFIX}/share/slim/themes
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/slim
	@sed -e 's,!!PREFIX!!,${TRUEPREFIX},g' \
		-e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g' \
		< ${FILESDIR}/README.OpenBSD \
		> ${PREFIX}/share/doc/slim/README.OpenBSD

.include <bsd.port.mk>
