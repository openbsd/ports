# $OpenBSD: Makefile,v 1.4 2001/10/14 23:27:02 naddy Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"fast and customizable WWW browser"

PKGNAME=	opera-5.05tp1p1
DISTNAME=	opera-5.05_tp1-static_qt-libnpp-0.1.1
CATEGORIES=	www
NEED_VERSION=	1.435
HOMEPAGE=	http://www.opera.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	"Commercial software"
PERMIT_PACKAGE_FTP=	"Commercial software"
PERMIT_DISTFILES_CDROM=	"Commercial software"
PERMIT_DISTFILES_FTP=	"Commercial software"

MASTER_SITES=	ftp://ftp.opera.com/pub/opera/linux/505/ \
		http://opera.online.no/linux/tgz/505/
EXTRACT_SUFX=	.x86.tar.gz

RUN_DEPENDS=	/emul/linux/usr/lib/libpng.so.2:redhat_base->=6.2p1:emulators/redhat/base \
		/emul/linux/usr/X11R6/lib/libXm.so.2::emulators/redhat/motif

do-build:
	sed -e 's,@PREFIX@,${PREFIX},g' \
	    -e 's,@LOCALBASE@,${LOCALBASE},g' \
	    ${FILESDIR}/opera.sh >${WRKBUILD}/wrapper.sh

do-install:
	cd ${WRKBUILD} && ./install.sh \
	    --prefix=${PREFIX} \
	    --exec_prefix=${PREFIX}/libexec \
	    --docdir=${PREFIX}/share/doc/opera
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opera
	${INSTALL_DATA} ${FILESDIR}/operarc ${PREFIX}/share/examples/opera

.include <bsd.port.mk>
