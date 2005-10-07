# $OpenBSD: Makefile,v 1.10 2005/10/07 14:08:34 wilfried Exp $

COMMENT=		"GNU awk"

DISTNAME=		gawk-3.1.5
CATEGORIES=		lang

HOMEPAGE=		http://www.gnu.org/software/gawk/gawk.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=		${MASTER_SITE_GNU:=gawk/}

MODULES=		devel/gettext

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	@touch -r ${WRKSRC}/test/Makefile.am ${WRKSRC}/test/Maketests

.include <bsd.port.mk>
