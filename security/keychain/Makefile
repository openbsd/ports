# $OpenBSD: Makefile,v 1.5 2002/11/17 11:55:20 wilfried Exp $

COMMENT=		"front-end to ssh-agent"

DISTNAME=		keychain-2.0.2
CATEGORIES=		security

HOMEPAGE=		http://www.gentoo.org/proj/en/keychain.xml

MAINTAINER=		Nikolay Sturm <sturm@sec.informatik.tu-darmstadt.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.ibiblio.org/pub/Linux/distributions/gentoo/distfiles/
EXTRACT_SUFX=		.tar.bz2

NO_BUILD=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/keychain ${PREFIX}/bin

.include <bsd.port.mk>
