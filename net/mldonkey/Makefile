# $OpenBSD: Makefile,v 1.4 2003/12/09 11:07:06 espie Exp $

COMMENT='e-donkey client'
CATEGORIES=net

MAINTAINER=Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
CONFIGURE_STYLE=	gnu

HOMEPAGE=http://savannah.nongnu.org/projects/mldonkey/

MASTER_SITES=http://savannah.nongnu.org/download/mldonkey/release-2.5-4/official/
DISTNAME=mldonkey-2.5.4
DISTFILES=mldonkey-2.5-4.tar.gz
WRKDIST=${WRKDIR}/mldonkey-2.5-4

USE_GMAKE=Yes
MODULES=ocaml
BUILD_DEPENDS=::x11/lablgtk
LIB_DEPENDS=gdk.1,gtk.1::x11/gtk+
FAKE_FLAGS=prefix=${DESTDIR}${PREFIX} MODOCAML_NATIVE=${MODOCAML_NATIVE}

post-install:
	mkdir -p ${PREFIX}/share/mldonkey
	cp -R ${WRKDIST}/distrib ${PREFIX}/share/mldonkey

.include <bsd.port.mk>
