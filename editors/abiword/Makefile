# $OpenBSD: Makefile,v 1.22 2002/10/17 18:37:13 couderc Exp $

COMMENT=	"open-source, cross-platform WYSIWYG word processor"

VERSION=	1.0.2
DISTNAME=	abiword-${VERSION}
CATEGORIES=	editors

HOMEPAGE=	http://www.abisource.com/

MAINTAINER=	Damien Couderc <couderc@openbsd.org>

LIB_DEPENDS=	png.2::graphics/png \
		jpeg.62::graphics/jpeg \
		xml2::textproc/libxml \
		gtk.1.2,gdk.1.2::x11/gtk+
RUN_DEPENDS=	ispell::textproc/ispell

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=abiword/}

USE_GMAKE=	Yes

CONFIGURE_STYLE=	gnu autoconf
CONFIGURE_ARGS=		--with-libpng=${LOCALBASE}/lib \
			--with-libxml2 \
			--disable-debug --disable-gnome
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS=	prefix="${PREFIX}"
FAKE_FLAGS=	prefix="${WRKINST}${PREFIX}"

MAKE_FILE=	GNUmakefile

WRKDIST=	${WRKDIR}/abiword-${VERSION}/abi

PFILE=		${WRKDIR}/abiword-${VERSION}/wv/generic.c

post-patch:
	@mv ${PFILE} ${PFILE}.orig
	@sed -e s/tmpnam/mkstemp/ ${PFILE}.orig > ${PFILE}

.include <bsd.port.mk>
