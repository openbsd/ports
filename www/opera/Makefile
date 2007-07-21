# $OpenBSD: Makefile,v 1.43 2007/07/21 07:32:06 sturm Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	"fast and customizable WWW browser"

DISTNAME=	opera-9.22-20070716.1-static-qt.i386-en
PKGNAME=	opera-9.22
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

MASTER_SITES=	${MASTER_SITES_OPERA:=linux/922/final/en/i386/static/}
EXTRACT_SUFX=	.tar.bz2

RUN_DEPENDS=	::emulators/fedora/base

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/${DISTNAME}-655

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
