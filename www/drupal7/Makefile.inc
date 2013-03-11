# $OpenBSD: Makefile.inc,v 1.2 2013/03/11 11:44:41 espie Exp $


MODULES +=	www/drupal7

# GPL
PERMIT_DISTFILES_FTP ?=	Yes
PERMIT_PACKAGE_CDROM ?=	Yes
PERMIT_PACKAGE_FTP ?=	Yes

NO_BUILD ?=	Yes
NO_TEST ?=	Yes

.if !target(do-install)
do-install:
		${MODDRUPAL_INSTALL}
.endif
