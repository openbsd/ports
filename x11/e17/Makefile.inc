# $OpenBSD: Makefile.inc,v 1.3 2007/12/02 18:18:10 bernd Exp $

CATEGORIES?=		x11

HOMEPAGE?=		http://www.enlightenment.org/

MASTER_SITES?=		http://www.itee.uq.edu.au/~dlg/openbsd/
DIST_SUBDIR?=		e17

USE_LIBTOOL?=		Yes

AUTOCONF_VERSION?=	2.61
AUTOMAKE_VERSION?=	1.9
AUTOMAKE_ENV?=		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

e17-post-patch:
	@cd ${WRKSRC} && ${SETENV} ${AUTOMAKE_ENV} NOCONFIGURE=true \
		${SH} autogen.sh

.if !target(post-patch)
post-patch: e17-post-patch
.endif
