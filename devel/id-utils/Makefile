# $OpenBSD: Makefile,v 1.6 1999/03/15 02:42:44 espie Exp $
#

DISTNAME=	id-utils-3.2
CATEGORIES=	devel

MAINTAINER=	ports@OpenBSD.ORG
# International files don't want to be built separately
SEPARATE_BUILD=simple

MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= id-utils

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
