# $OpenBSD: Makefile,v 1.1.1.1 2001/05/16 14:44:26 naddy Exp $

COMMENT=	"fast and customizable WWW browser"
ONLY_FOR_ARCHS=	i386

PKGNAME=	opera-5.0
DISTNAME=	opera-5.0-static.i386
CATEGORIES=	www
NEED_VERSION=	1.405
HOMEPAGE=	http://www.opera.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	"Commercial software"
PERMIT_PACKAGE_FTP=	"Commercial software"
PERMIT_DISTFILES_CDROM=	"Commercial software"
PERMIT_DISTFILES_FTP=	"Commercial software"

MASTER_SITES=	ftp://ftp.opera.com/pub/opera/linux/500/ \
		http://opera.online.no/linux/tgz/500/ \
		ftp://gd.tuwien.ac.at/infosys/browsers/opera/linux/500/ \
		ftp://ftp.sunet.se/pub/www/clients/Opera/linux/500/ \
		ftp://ftp.planetmirror.com/pub/opera/linux/500/

RUN_DEPENDS=	/emul/linux/usr/lib/libpng.so.2:redhat_base->=6.2p1:emulators/redhat_base

do-build:
	sed 's,@PREFIX@,${PREFIX},g' ${FILESDIR}/opera.sh >${WRKBUILD}/opera.sh

do-install:
	cd ${WRKBUILD} && ./install.sh --prefix=${PREFIX}
	mv ${PREFIX}/bin/opera ${PREFIX}/libexec/opera
	${INSTALL_SCRIPT} ${WRKBUILD}/opera.sh ${PREFIX}/bin/opera
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opera
	${INSTALL_DATA} ${FILESDIR}/operarc ${PREFIX}/share/examples/opera

.include <bsd.port.mk>
