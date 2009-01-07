# $OpenBSD: Makefile,v 1.12 2009/01/07 16:35:08 jasper Exp $

COMMENT=		GNU awk

V=			3.1.6
DISTNAME=		gawk-$V
CATEGORIES=		lang

HOMEPAGE=		http://www.gnu.org/software/gawk/gawk.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=		${MASTER_SITE_GNU:=gawk/}

MODULES=		devel/gettext

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.61
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS+=		V

pre-build:
	@touch -r ${WRKSRC}/test/Makefile.am ${WRKSRC}/test/Maketests

.include <bsd.port.mk>
