#$OpenBSD: Makefile,v 1.5 2003/11/18 21:22:09 sturm Exp $

CATEGORIES=	audio

COMMENT=	'AC-3 decoding library'
DISTNAME=	a52dec-0.7.4
PKGNAME=	liba52-0.7.4p0
MASTER_SITES=	http://liba52.sourceforge.net/files/
HOMEPAGE=	http://liba52.sourceforge.net/

MAINTAINER=	Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

# GPL
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes

.if ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=	patch-* gcc-*
.endif

.include <bsd.port.mk>
