# $OpenBSD: Makefile,v 1.9 2002/05/16 12:55:21 naddy Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"fast and customizable WWW browser"

PKGNAME=	opera-6.0
DISTNAME=	opera-6.0-20020510.1-static-qt.i386
CATEGORIES=	www
NEED_VERSION=	1.522
HOMEPAGE=	http://www.opera.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	"Commercial software"
PERMIT_PACKAGE_FTP=	"Commercial software"
PERMIT_DISTFILES_CDROM=	"Commercial software"
PERMIT_DISTFILES_FTP=	"Commercial software"

MASTER_SITES=	ftp://ftp.opera.com/pub/opera/linux/600/final/en/qt_static/ \
		http://opera.online.no/linux/600/final/en/qt_static/
EXTRACT_SUFX=	.tar.bz2

RUN_DEPENDS=	:redhat_base->=6.2p1:emulators/redhat/base \
		::emulators/redhat/motif

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	cd ${WRKBUILD} && ./install.sh \
	    --prefix=${PREFIX} \
	    --exec_prefix=${PREFIX}/libexec \
	    --plugindir=${PREFIX}/lib/opera/plugins
	cd ${PREFIX}/share/doc/opera; \
	    ln -sf ../../opera/help .
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opera
	${INSTALL_DATA} ${FILESDIR}/operarc ${PREFIX}/share/examples/opera
	sed -e 's:@PREFIX@:${TRUEPREFIX}:g' \
	    -e 's:@LOCALBASE@:${LOCALBASE}:g' \
	    ${FILESDIR}/opera.sh >${PREFIX}/bin/opera

.include <bsd.port.mk>
