# $OpenBSD: Makefile.inc,v 1.1.1.1 2009/04/03 14:07:58 espie Exp $


MAINTAINER ?=	Marc Espie <espie@openbsd.org>

MODULES +=	www/drupal6

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
