# $OpenBSD: Makefile.inc,v 1.1.1.1 2016/06/30 11:49:21 espie Exp $


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
