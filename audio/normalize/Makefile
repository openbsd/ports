# $OpenBSD: Makefile,v 1.12 2006/07/19 13:41:02 steven Exp $

COMMENT=	"audio file volume normalizer"

DISTNAME=	normalize-0.7.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	audio
MASTER_SITES=	http://www.cs.columbia.edu/~cvaill/normalize/

HOMEPAGE=	http://normalize.nongnu.org/

MAINTAINER=	Jason Ish <ish@openbsd.org>

# GPL license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu

# Do not build xmms plugin for now.
CONFIGURE_ARGS=	--disable-xmms \
		--with-mad \
		--with-audiofile
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

LIB_DEPENDS=	mad.2::audio/libmad \
		audiofile::devel/libaudiofile

USE_LIBTOOL=	Yes

.include <bsd.port.mk>
