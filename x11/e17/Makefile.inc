# $OpenBSD: Makefile.inc,v 1.4 2008/01/07 19:57:40 reyk Exp $

CATEGORIES?=		x11

HOMEPAGE?=		http://www.enlightenment.org/

MASTER_SITES?=		ftp://ftp.vantronix.com/pub/mirrors/dlg/ \
			http://www.itee.uq.edu.au/~dlg/openbsd/
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
