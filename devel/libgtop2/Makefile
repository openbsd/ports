# $OpenBSD: Makefile,v 1.7 2004/02/10 00:47:57 espie Exp $

COMMENT=		"portable library for obtaining system information"

V=			2.0.7
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
LIB_DEPENDS=	glib-2.0.0.0::devel/glib2 \
		popt::devel/popt

SEPARATE_BUILD=		concurrent
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	autoconf
AUTOCONF_VERSION=	2.57
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@mv ${WRKDIR}/${SYSDEPS} ${WRKSRC}/sysdeps/openbsd

post-configure:
	@touch ${WRKSRC}/Makefile.in
	@touch ${WRKBUILD}/Makefile

.include <bsd.port.mk>
