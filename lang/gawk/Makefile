# $OpenBSD: Makefile,v 1.2 2002/05/13 08:18:20 wilfried Exp $

COMMENT=		"GNU awk"

DISTNAME=		gawk-3.1.0
CATEGORIES=		lang
NEED_VERSION=		1.528

HOMEPAGE=		http://www.gnu.org/software/gawk/gawk.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=gawk/}

MODULES=		gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
