# $OpenBSD: Makefile,v 1.1.1.1 2002/03/07 17:37:38 espie Exp $

COMMENT=		"front-end to ssh-agent"

DISTNAME=		keychain-1.9
CATEGORIES=		security
NEED_VERSION=		1.504

HOMEPAGE=		http://www.gentoo.org/projects/keychain/

MAINTAINER=		Nikolay Sturm <nikolay.sturm@desy.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.ibiblio.org/gentoo/distfiles/
EXTRACT_SUFX=		.tar.bz2

NO_BUILD=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/keychain ${PREFIX}/bin

.include <bsd.port.mk>
