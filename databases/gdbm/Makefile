# $OpenBSD: Makefile,v 1.20 2002/11/05 05:31:18 brad Exp $

COMMENT=		"GNU dbm"

DISTNAME=		gdbm-1.8.3
CATEGORIES=		databases
MASTER_SITES=		${MASTER_SITE_GNU:=gdbm/}

HOMEPAGE=		http://www.gnu.org/software/gdbm/

MAINTAINER=		Margarida Sequeira <niness@devilness.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= 	gnu dest
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

NO_REGRESS=	Yes

.include <bsd.port.mk>
