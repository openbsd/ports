# $OpenBSD: Makefile,v 1.1.1.1 2003/11/16 16:17:58 sturm Exp $

ONLY_FOR_ARCHS=	i386 macppc

COMMENT=	"TV viewing application"

DISTNAME=	xawtv-3.90
DISTFILES=	${DISTNAME:S,-,_,}.tar.gz
CATEGORIES=	x11

MAINTAINER=	Robert Nagy <thuglife@bsd.hu>

HOMEPAGE=	http://bytesex.org/xawtv/

MASTER_SITES=	${HOMEPAGE}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	jpeg.62::graphics/jpeg

.if ${MACHINE_ARCH} == "i386"
FLAVORS=	mmx
FLAVOR?=
.  if ${FLAVOR:L:Mmmx}
CONFIGURE_ARGS+=--enable-mmx
.  else
CONFIGURE_ARGS+=--disable-mmx
.  endif
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-aa --disable-motif
CONFIGURE_ENV=	PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

MAKE_FLAGS=	verbose=yes SYSCONFDIR="${SYSCONFDIR}"
NO_REGRESS=	Yes
USE_GMAKE=	Yes

post-install:
	@perl -pi -e "s,/etc/X11,${SYSCONFDIR}," ${PREFIX}/man/man5/xawtvrc.5
	${INSTALL_DATA} ${WRKSRC}/x11/Xawtv.ad \
			${PREFIX}/lib/X11/app-defaults/Xawtv

.include <bsd.port.mk>
