# OpenBSD makefile for:	id-utils
# Version required:	3.2
# Date created:		1 Dev 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.2 1998/03/15 04:30:47 marc Exp $
#

DISTNAME=	id-utils-3.2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}

MAINTAINER=	ports@OpenBSD.ORG

# need to byte-compile a .el file
BUILD_DEPENDS=	emacs:${PORTSDIR}/editors/emacs

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/id-utils.info ${PREFIX}/info/dir

.include <bsd.port.mk>
