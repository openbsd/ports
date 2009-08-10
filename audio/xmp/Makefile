# $OpenBSD: Makefile,v 1.31 2009/08/10 06:29:53 kili Exp $

COMMENT-main=	extended module player
COMMENT-xmms=	extended module player plugin for XMMS
DISTNAME=	xmp-2.0.4
PKGNAME-main=	${DISTNAME}p4
PKGNAME-xmms=	xmms-${DISTNAME}p1
CATEGORIES=	audio

HOMEPAGE=	http://xmp.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmp/}

PSEUDO_FLAVORS=	no_xmms
.if ${MACHINE_ARCH} == "m88k" || ${MACHINE_ARCH} == "vax"
FLAVOR?=	no_xmms
.else
FLAVOR?=
.endif

MULTI_PACKAGES=		-main
.if !${FLAVOR:L:Mno_xmms}
MULTI_PACKAGES+=	-xmms
LIB_DEPENDS=		xmms.>=3::audio/xmms
.else
CONFIGURE_ARGS+= --disable-xmms
.endif

LIB_DEPENDS-xmms=
RUN_DEPENDS-xmms=	::audio/xmms
WANTLIB-xmms=

LIB_DEPENDS-main=	esd.>=2::audio/esound
WANTLIB-main=		X11 Xext c m pthread-stubs xcb

USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/scripts
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	DEST_DIR=${WRKINST} \
		SYSCONF_DIR=${PREFIX}/share/examples/xmp

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xmp \
		${PREFIX}/lib/xmms/Input

.include <bsd.port.mk>
