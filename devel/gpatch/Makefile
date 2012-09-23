# $OpenBSD: Makefile,v 1.1.1.1 2012/09/23 12:23:35 rpe Exp $

COMMENT=		GNU patch

VERSION=		2.7
DISTNAME=		patch-${VERSION}
PKGNAME=		gpatch-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.gnu.org/software/patch/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_GNU:=patch/}

USE_GMAKE=		Yes
USE_GROFF=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--program-prefix=g

REGRESS_DEPENDS=	shells/bash \
			textproc/gdiff
REGRESS_FLAGS=		SHELL=${LOCALBASE}/bin/bash

pre-regress:
	@ln -fs ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff

post-install:
	@rm ${PREFIX}/lib/charset.alias

.include <bsd.port.mk>
