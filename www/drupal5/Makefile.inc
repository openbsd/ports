# $OpenBSD: Makefile.inc,v 1.1.1.1 2008/02/16 16:46:59 espie Exp $


MAINTAINER ?=	Marc Espie <espie@openbsd.org>

MODULES +=	www/drupal5

# GPL
PERMIT_DISTFILES_CDROM ?=Yes
PERMIT_DISTFILES_FTP ?=	Yes
PERMIT_PACKAGE_CDROM ?=	Yes
PERMIT_PACKAGE_FTP ?=	Yes

NO_BUILD ?=	Yes
NO_REGRESS ?=	Yes

.if !target(do-install)
do-install:
		${MODDRUPAL_INSTALL}
.endif
