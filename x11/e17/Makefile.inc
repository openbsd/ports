# $OpenBSD: Makefile.inc,v 1.2 2007/12/02 13:55:21 bernd Exp $

CATEGORIES?=		x11

HOMEPAGE?=		http://www.enlightenment.org/

MASTER_SITES?=		http://www.itee.uq.edu.au/~dlg/openbsd/
DIST_SUBDIR?=		e17

USE_LIBTOOL?=		Yes

e17-post-patch:
	@cd ${WRKSRC} && ${SETENV} ${AUTOMAKE_ENV} NOCONFIGURE=true \
		${SH} autogen.sh

.if !target(post-patch)
post-patch: e17-post-patch
.endif
