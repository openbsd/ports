# $OpenBSD: Makefile,v 1.26 2005/11/16 19:50:53 naddy Exp $

COMMENT=	"extended module player"
COMMENT-xmms=	"extended module player plugin for XMMS"
DISTNAME=	xmp-2.0.4
PKGNAME=	${DISTNAME}p2
PKGNAME-xmms=	xmms-${DISTNAME}p1
CATEGORIES=	audio

HOMEPAGE=	http://xmp.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=xmp/}

PSEUDO_FLAVORS=	no_xmms
.if ${MACHINE_ARCH} == "m88k" || ${MACHINE_ARCH} == "vax"
FLAVOR?=	no_xmms
.else
FLAVOR?=
.endif

MULTI_PACKAGES=
.if !{FLAVOR:L:Mno_xmms}
MULTI_PACKAGES+= -xmms
.endif
SUBPACKAGE?=

LIB_DEPENDS=	esd.2::audio/esound
.if ${MULTI_PACKAGES:M-xmms}
LIB_DEPENDS+=	xmms.3::audio/xmms
.else
CONFIGURE_ARGS+= --disable-xmms
.endif

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

.if defined(PACKAGING)
.  if ${SUBPACKAGE} == "-xmms"
WANTLIB=
LIB_DEPENDS=
RUN_DEPENDS=	::audio/xmms
.  else
LIB_DEPENDS=	esd.2::audio/esound
.  endif
.endif

.include <bsd.port.mk>
