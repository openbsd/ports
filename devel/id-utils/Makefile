# OpenBSD makefile for:	id-utils
# Version required:	3.2
# Date created:		1 Dev 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.3 1998/04/08 23:16:44 niklas Exp $
#

DISTNAME=	id-utils-3.2
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU}

MAINTAINER=	ports@OpenBSD.ORG

# need to byte-compile a .el file
BUILD_DEPENDS=	emacs:${PORTSDIR}/editors/emacs

GNU_CONFIGURE=	yes
CONFIGURE_ENV=	${SETENV}
USE_GMAKE=	yes

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/id-utils.info ${PREFIX}/info/dir

.include <bsd.port.mk>
