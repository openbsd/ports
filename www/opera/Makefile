# $OpenBSD: Makefile,v 1.34 2006/04/05 18:36:36 sturm Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"fast and customizable WWW browser"

PKGNAME=	opera-8.54
DISTNAME=	opera-8.54-20060330.1-static-qt.i386-en
CATEGORIES=	www

HOMEPAGE=	http://www.opera.com/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

PERMIT_PACKAGE_CDROM=	"Commercial software"
PERMIT_PACKAGE_FTP=	"Commercial software"
PERMIT_DISTFILES_CDROM=	"Commercial software"
PERMIT_DISTFILES_FTP=	"Commercial software"

MASTER_SITES_OPERA=	ftp://ftp.opera.com/pub/opera/ \
			ftp://gd.tuwien.ac.at/infosys/browsers/opera/ \
			ftp://ftp.hu-berlin.de/pub/www/opera/ \
			ftp://sunsite.cnlab-switch.ch/mirror/opera/ \
			ftp://ftp.planetmirror.com/pub/opera/ \
			ftp://ftp.sunet.se/pub/www/clients/Opera/ \
			ftp://ftp.task.gda.pl/pub/opera/ \
			ftp://opera.mirror.stop.hu/opera/ \
			http://www.panix.com/opera/files/ \
			ftp://ftp.rge.com/pub/infosystems/opera/ \
			http://www.rge.com/pub/infosystems/opera/

MASTER_SITES=	${MASTER_SITES_OPERA:=linux/854/final/en/i386/static/}
EXTRACT_SUFX=	.tar.bz2

RUN_DEPENDS=	:redhat_base->=8.0:emulators/redhat/base

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	cd ${WRKBUILD} && ./install.sh \
	    --prefix=${PREFIX} \
	    --exec_prefix=${PREFIX}/libexec \
	    --plugindir=${PREFIX}/lib/opera/plugins
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opera
	${INSTALL_DATA} ${FILESDIR}/operarc \
	    ${PREFIX}/share/examples/opera/opera6rc
	${INSTALL_DATA} ${FILESDIR}/operarc.fixed \
	    ${PREFIX}/share/examples/opera/opera6rc.fixed
	sed -e 's:@PREFIX@:${TRUEPREFIX}:g' \
	    -e 's:@LOCALBASE@:${LOCALBASE}:g' \
	    ${FILESDIR}/opera.sh >${PREFIX}/bin/opera

.include <bsd.port.mk>
