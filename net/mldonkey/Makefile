# $OpenBSD: Makefile,v 1.3 2003/06/29 07:57:18 sturm Exp $

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

MASTER_SITES=http://savannah.nongnu.org/download/mldonkey/release-2.5-3/official/
DISTNAME=mldonkey-2.5.3
PKGNAME=${DISTNAME}p0
DISTFILES=mldonkey-2.5-3.sources.tar.gz
WRKDIST=${WRKDIR}/mldonkey-2.5-3

USE_GMAKE=Yes
MODULES=ocaml
BUILD_DEPENDS=::x11/lablgtk
FAKE_FLAGS=prefix=${DESTDIR}${PREFIX} MODOCAML_NATIVE=${MODOCAML_NATIVE}

post-install:
	mkdir -p ${PREFIX}/share/mldonkey
	cp -R ${WRKDIST}/distrib ${PREFIX}/share/mldonkey

.include <bsd.port.mk>
