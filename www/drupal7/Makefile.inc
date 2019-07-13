# $OpenBSD: Makefile.inc,v 1.3 2019/07/13 10:59:27 sthen Exp $


MODULES +=	www/drupal7

# GPL
PERMIT_PACKAGE ?=	Yes

NO_BUILD ?=	Yes
NO_TEST ?=	Yes

.if !target(do-install)
do-install:
		${MODDRUPAL_INSTALL}
.endif
