# $OpenBSD: Makefile,v 1.9 2002/09/17 14:35:03 wilfried Exp $

COMMENT=		'dockapp-making standard library for Window Maker'

DISTNAME=		libdockapp-0.4.0
CATEGORIES=		devel

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://shadowmere.student.utwente.nl/pub/WindowMaker/

PATCH_LIST=		${PORTSDIR}/infrastructure/patches/patch-lt1.3.0-ltconfig \
			${PORTSDIR}/infrastructure/patches/patch-lt1.3.0-ltmain_sh \
			patch-*

USE_X11=		Yes
NO_REGRESS=		Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} --enable-static

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libdockapp
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/libdockapp

.include <bsd.port.mk>
