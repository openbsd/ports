# $OpenBSD: Makefile,v 1.26 2004/01/30 17:04:48 lebel Exp $

COMMENT=	"window manager based on the original Blackbox code"

VERSION=		0.1.14
DISTNAME=		fluxbox-${VERSION}
PKGNAME=		${DISTNAME} #p2
CATEGORIES=		x11

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=fluxbox/}
#MASTER_SITES0=		http://www.fluxbox.org/download/patches/
#PATCHFILES=		fluxbox-${VERSION}-bugfix1.patch:0
#PATCH_DIST_STRIP=       -p1

HOMEPAGE=		http://fluxbox.org/


# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.54
CONFIGURE_ARGS=		--enable-kde --enable-xinerama
USE_GMAKE=		Yes

MODULES=		gcc3
MODGCC3_ARCHES=		sparc64
MODGCC3_LANGS+=		c++
USE_X11=		Yes
SUBST_VARS=		VERSION

# prevent cascading autotools rebuild
post-patch:
	@touch -r ${WRKSRC}/aclocal.m4 ${WRKSRC}/configure.in

post-install:
	${INSTALL_DATA} ${FILESDIR}/menu ${PREFIX}/share/fluxbox

.include <bsd.port.mk>
