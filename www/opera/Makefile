# $OpenBSD: Makefile,v 1.8 2002/04/23 15:44:43 naddy Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"fast and customizable WWW browser"

PKGNAME=	opera-6.0b2
DISTNAME=	opera-6.0-20020412.1-static-qt.i386
CATEGORIES=	www
NEED_VERSION=	1.522
HOMEPAGE=	http://www.opera.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	"Commercial software"
PERMIT_PACKAGE_FTP=	"Commercial software"
PERMIT_DISTFILES_CDROM=	"Commercial software"
PERMIT_DISTFILES_FTP=	"Commercial software"

MASTER_SITES=	ftp://ftp.opera.com/pub/opera/linux/600/beta2/ \
		http://opera.online.no/linux/600/beta2/
EXTRACT_SUFX=	.tar.bz2

RUN_DEPENDS=	:redhat_base->=6.2p1:emulators/redhat/base \
		::emulators/redhat/motif

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	cd ${WRKBUILD} && ./install.sh \
	    --prefix=${PREFIX} \
	    --exec_prefix=${PREFIX}/libexec
	cd ${PREFIX}/share/doc/opera; \
	    ln -sf ../../opera/help .
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opera
	${INSTALL_DATA} ${FILESDIR}/operarc ${PREFIX}/share/examples/opera
	sed -e 's:@PREFIX@:${TRUEPREFIX}:g' \
	    -e 's:@LOCALBASE@:${LOCALBASE}:g' \
	    ${FILESDIR}/opera.sh >${PREFIX}/bin/opera

.include <bsd.port.mk>
