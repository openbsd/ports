# OpenBSD makefile for:	id-utils
# Version required:	3.2
# Date created:		1 Dev 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/01 21:37:56 joey Exp $
#

DISTNAME=	id-utils-3.2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}

MAINTAINER=	joey@OpenBSD.ORG

# need to byte-compile a .el file
BUILD_DEPENDS=	emacs:${PORTSDIR}/editors/emacs

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

.include <bsd.port.mk>
