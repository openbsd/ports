# $OpenBSD: Makefile,v 1.3 2005/02/24 13:20:41 alek Exp $

COMMENT=		"command line JavaScript interpreter"

DISTNAME=		js-0.2.5
CATEGORIES=		lang

HOMEPAGE=		http://people.ssh.fi/mtr/js/

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c m

MASTER_SITES=		${HOMEPAGE}

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--prefix="${PREFIX}"

REGRESS_TARGET=		check

.include <bsd.port.mk>
