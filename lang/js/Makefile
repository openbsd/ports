# $OpenBSD: Makefile,v 1.1.1.1 2002/10/22 22:17:02 pvalchev Exp $

COMMENT=		"command line JavaScript interpreter"

DISTNAME=		js-0.2.5
CATEGORIES=		lang

HOMEPAGE=		http://people.ssh.fi/mtr/js/

MAINTAINER=		Jose Nazario <jose@crimelabs.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${HOMEPAGE}

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--prefix="${PREFIX}"

REGRESS_TARGET=		check

.include <bsd.port.mk>
