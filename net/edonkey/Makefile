# $OpenBSD: Makefile,v 1.1.1.1 2002/05/11 06:57:41 espie Exp $

ONLY_FOR_ARCHS=		i386

COMMENT=		"file-sharing client"
DISTNAME=		donkey_s
PKGNAME=		edonkey-16.16.59
CATEGORIES=		net
NEED_VERSION=		1.525

HOMEPAGE=		http://www.edonkey2000.com/

MAINTAINER=		Sebastian Stark <seb@todesplanet.de>

# I don't know, there's no license.
PERMIT_PACKAGE_CDROM=	"Shareware"
PERMIT_PACKAGE_FTP=	"Shareware"
PERMIT_DISTFILES_CDROM=	"Shareware"
PERMIT_DISTFILES_FTP=	"Shareware"

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

.include <bsd.port.mk>
