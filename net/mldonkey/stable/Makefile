# $OpenBSD: Makefile,v 1.4 2004/12/16 00:31:23 alek Exp $

COMMENT='e-donkey client'
CATEGORIES=net

MAINTAINER=Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m z
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-ocamlver=3.07
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

HOMEPAGE=http://savannah.nongnu.org/projects/mldonkey/

MASTER_SITES=http://savannah.nongnu.org/download/mldonkey/release-2.5-4/official/
DISTNAME=mldonkey-2.5.4
PKGNAME=${DISTNAME}p0
DISTFILES=mldonkey-2.5-4.tar.gz
WRKDIST=${WRKDIR}/mldonkey-2.5-4

USE_GMAKE=Yes
MODULES=lang/ocaml
BUILD_DEPENDS=::x11/lablgtk
LIB_DEPENDS=gdk.1,gtk.1::x11/gtk+
FAKE_FLAGS=prefix=${DESTDIR}${PREFIX} MODOCAML_NATIVE=${MODOCAML_NATIVE}
NO_REGRESS=Yes

post-install:
	mkdir -p ${PREFIX}/share/mldonkey
	cp -R ${WRKDIST}/distrib ${PREFIX}/share/mldonkey

.include <bsd.port.mk>
