# $OpenBSD: Makefile,v 1.4 2002/12/22 20:19:00 pvalchev Exp $

ONLY_FOR_ARCHS=		i386

COMMENT=		"file-sharing client (core)"
DISTNAME=		donkey_s
PKGNAME=		edonkey-16.16.59p1
CATEGORIES=		net

HOMEPAGE=		http://www.edonkey2000.com/
MAINTAINER=		Sebastian Stark <seb@todesplanet.de>

PERMIT_PACKAGE_CDROM=	"No license"
PERMIT_PACKAGE_FTP=	"No license"
PERMIT_DISTFILES_CDROM=	"No license"
PERMIT_DISTFILES_FTP=	"No license"

MASTER_SITES=		${HOMEPAGE}files/
EXTRACT_SUFX=		.gz

NO_BUILD=		Yes
NO_REGRESS=		Yes
BUILD_DEPENDS=		:redhat_base->=6.2*:emulators/redhat/base
STRIPCMD=		/emul/linux/usr/bin/strip

WRKBUILD=		${WRKDIR}

do-install:
	cd ${WRKBUILD} && STRIP=${STRIPCMD} ${INSTALL_PROGRAM} ${DISTNAME} ${PREFIX}/bin/edonkey
	elf2olf -o linux ${PREFIX}/bin/edonkey
	ln -s edonkey ${PREFIX}/bin/donkey

.include <bsd.port.mk>
