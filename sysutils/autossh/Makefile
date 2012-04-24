# $OpenBSD: Makefile,v 1.14 2012/04/24 12:37:44 gonzalo Exp $

COMMENT=		SSH monitoring

DISTNAME=		autossh-1.4c
CATEGORIES=		sysutils

MASTER_SITES=		${HOMEPAGE}

HOMEPAGE=		http://www.harding.motd.ca/autossh/

MAINTAINER=		Gonzalo L. R. <gonzalo@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

EXTRACT_SUFX=		.tgz

USE_GROFF=		Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu dest

.include <bsd.port.mk>
