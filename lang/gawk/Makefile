# $OpenBSD: Makefile,v 1.1.1.1 2002/02/12 15:45:45 wilfried Exp $

COMMENT=		"GNU awk"

DISTNAME=		gawk-3.1.0
CATEGORIES=		lang
NEED_VERSION=		1.504

HOMEPAGE=		http://www.gnu.org/software/gawk/gawk.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	gawk

MODULES=		gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
