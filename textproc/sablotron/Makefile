# $OpenBSD: Makefile,v 1.1.1.1 2000/09/12 12:12:11 avsm Exp $

DISTNAME=		Sablot-0.43
PKGNAME=		sablotron-0.43
CATEGORIES=     	textproc
NEED_VERSION=		1.328

HOMEPAGE=		http://www.gingerall.com/
MAINTAINER=		avsm@openbsd.org

# MPL or GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.gingerall.com/download/
DISTFILES=		Sablot-0.43.tar.gz Sablot-Expat-1.1.2.tar.gz

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
# Shared libraries are currently broken for this port
CONFIGURE_ARGS=		--disable-shared

post-extract:
	@(cd ${WRKDIR}; mv Expat ${DISTNAME})

.include <bsd.port.mk>
