# $OpenBSD: Makefile,v 1.8 2004/02/09 18:13:17 sturm Exp $

COMMENT=		"front-end to ssh-agent"

DISTNAME=		keychain-2.0.3
CATEGORIES=		security

HOMEPAGE=		http://www.gentoo.org/proj/en/keychain.xml

MAINTAINER=		Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.ibiblio.org/pub/Linux/distributions/gentoo/distfiles/
EXTRACT_SUFX=		.tar.bz2

NO_REGRESS=		Yes
PKG_ARCH=		*

do-build:
	@perl -pi -e "s,bash_profile,profile," ${WRKDIST}/keychain{,.1}

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/keychain ${PREFIX}/bin
	${INSTALL_DATA} ${WRKDIST}/keychain.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
