# $OpenBSD: Makefile,v 1.12 2003/07/05 00:27:08 naddy Exp $

COMMENT=		"GNU editor: extensible, customizable, self documenting"

VERSION=		21.3
DISTNAME=		emacs-${VERSION}
CATEGORIES=		editors
MASTER_SITES=		${MASTER_SITE_GNU:=emacs/}

HOMEPAGE=		http://www.gnu.org/software/emacs/

MAINTAINER=		Han Boetes <han@linux-mandrake.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=		GCCARCH VERSION

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	${GCCARCH}

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
				  -I${LOCALBASE}/include/libpng" \
			LDFLAGS="   ${ELF_TOOLCHAIN:S/yes/-Z/:S/no//} \
				  -L${LOCALBASE}/lib"

FLAVORS=		no_x11
FLAVOR?=

GCCARCH=		${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}

CONFIGURE_ARGS+=	--with-pop

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--with-x=no
.else
USE_X11=Yes
LIB_DEPENDS=		ungif.5::graphics/libungif \
			jpeg.62::graphics/jpeg \
			png.2::graphics/png \
			tiff.35::graphics/tiff
.endif

.include <bsd.port.mk>
