# $OpenBSD: Makefile,v 1.3 2003/06/12 19:39:57 marcm Exp $

COMMENT=		"portable library for obtaining system information"

V=			2.0.1
DISTNAME=		libgtop-${V}
PKGNAME=		libgtop2-${V}
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

SYSDEPS=		openbsd-libgtop-020830
DISTFILES=		${DISTNAME}.tar.bz2 \
			${SYSDEPS}.tar.gz:0

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgtop/2.0/}
MASTER_SITES0=		http://nforced.com/openbsd/distfiles/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	gettext
LIB_DEPENDS=	glib-2.0.0.0::devel/glib2

SEPARATE_BUILD=		concurrent
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	autoconf
# Should be 2.53
AUTOCONF_VERSION=	2.52
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@mv ${WRKDIR}/${SYSDEPS} ${WRKSRC}/sysdeps/openbsd

.include <bsd.port.mk>
