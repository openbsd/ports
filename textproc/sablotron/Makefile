# $OpenBSD: Makefile,v 1.4 2001/02/19 18:13:57 danh Exp $

DISTNAME=		Sablot-0.44
PKGNAME=		sablotron-0.44
CATEGORIES=     	textproc
NEED_VERSION=		1.330

HOMEPAGE=		http://www.gingerall.com/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

# MPL or GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://download.gingerall.cz/sablot/
DISTFILES=		Sablot-0.44${EXTRACT_SUFX} Sablot-Expat-1.1.2${EXTRACT_SUFX}

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
# Shared libraries are currently broken for this port
CONFIGURE_ARGS=		--disable-shared

post-extract:
	@(cd ${WRKDIR}; mv Expat ${DISTNAME})

.include <bsd.port.mk>
