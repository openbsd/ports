# $OpenBSD: Makefile,v 1.7 2002/02/27 18:43:34 naddy Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"fast and customizable WWW browser"

PKGNAME=	opera-5.05tp1p2
DISTNAME=	opera-5.05_tp1-static_qt-libnpp-0.1.1
CATEGORIES=	www
NEED_VERSION=	1.496
HOMEPAGE=	http://www.opera.com/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	"Commercial software"
PERMIT_PACKAGE_FTP=	"Commercial software"
PERMIT_DISTFILES_CDROM=	"Commercial software"
PERMIT_DISTFILES_FTP=	"Commercial software"

MASTER_SITES=	ftp://ftp.opera.com/pub/opera/linux/505/ \
		http://opera.online.no/linux/tgz/505/
EXTRACT_SUFX=	.x86.tar.gz

RUN_DEPENDS=	:redhat_base->=6.2p1:emulators/redhat/base \
		::emulators/redhat/motif

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-configure:
	sed -e 's,@PREFIX@,${PREFIX},g' \
	    -e 's,@LOCALBASE@,${LOCALBASE},g' \
	    ${FILESDIR}/opera.sh >${WRKBUILD}/wrapper.sh

do-install:
	cd ${WRKBUILD} && ./install.sh \
	    --prefix=${PREFIX} \
	    --exec_prefix=${PREFIX}/libexec \
	    --docdir=${PREFIX}/share/doc/opera

.include <bsd.port.mk>
