# $OpenBSD: Makefile,v 1.2 2003/06/17 16:36:05 lebel Exp $

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
DISTFILES=mldonkey-2.5-3.sources.tar.gz
WRKDIST=${WRKDIR}/mldonkey-2.5-3

USE_GMAKE=Yes
MODULES=ocaml
BUILD_DEPENDS=::x11/lablgtk
FAKE_FLAGS=prefix=${DESTDIR}${PREFIX}

post-install:
	mkdir -p ${PREFIX}/share/mldonkey
	cp -R ${WRKDIST}/distrib ${PREFIX}/share/mldonkey

.include <bsd.port.mk>
