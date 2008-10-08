# $OpenBSD: Makefile,v 1.54 2008/10/08 20:30:22 sturm Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	fast and customizable WWW browser

V=		9.60
OPERA_BUILD=	2444
DISTNAME=	opera-${V}.gcc4-static-qt3.i386
PKGNAME=	opera-${V}
CATEGORIES=	www

HOMEPAGE=	http://www.opera.com/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Commercial software
PERMIT_PACKAGE_FTP=	Commercial software
PERMIT_DISTFILES_CDROM=	Commercial software
PERMIT_DISTFILES_FTP=	Commercial software

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

MASTER_SITES=	${MASTER_SITES_OPERA:=linux/${V:S/.//}/final/en/i386/static/}
EXTRACT_SUFX=	.tar.bz2

RUN_DEPENDS=	::emulators/fedora/base

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/opera-$V-${OPERA_BUILD}.gcc4-static-qt3.i386

do-install:
	cd ${WRKBUILD} && ./install.sh \
	    --DESTDIR=${DESTDIR} \
	    --docdir=${TRUEPREFIX}/share/doc/opera \
	    --exec_prefix=${TRUEPREFIX}/libexec \
	    --mandir=${TRUEPREFIX}/man \
	    --plugindir=${TRUEPREFIX}/lib/opera/plugins \
	    --sharedir=${TRUEPREFIX}/share/opera \
	    --wrapperdir=${TRUEPREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opera
	${INSTALL_DATA} ${FILESDIR}/operarc \
	    ${PREFIX}/share/examples/opera/opera6rc
	${INSTALL_DATA} ${FILESDIR}/operarc.fixed \
	    ${PREFIX}/share/examples/opera/opera6rc.fixed

.include <bsd.port.mk>
